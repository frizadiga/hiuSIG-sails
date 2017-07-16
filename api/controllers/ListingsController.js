/**
 * ListingsController
 *
 * @description :: Server-side logic for managing Listings
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	main:function(req,res){
		res.send('PropertyController.index');
	},
	
  s:function(req,res){
		Listings.s(req.allParams(),function(err,data){
			if(err)res.send(err);
			res.send(data);
		});
	},
	
  getCoords:function(req,res){
    Listings.find().exec(function(err,data){
      if(err)res.send(err);
      let dataLocation = [];
      let len = data.length;
      for (let i = 0; i < len; i++) {
        dataLocation.push(
        {
          //title:data[i].title,
          lat:Number(data[i].lat),
          lng:Number(data[i].lng)
        }
        );
      }
      res.json(dataLocation);
    });
	},

	newListings:(req,res)=>{
    Listings.newListings({},(err,data)=>{
      if(err)return res.serverError(err);
      if(data.length<1){
        return  res.searchNotFound('Listing tidak ditemukan!');
      }
      return res.view('pages/listings',{dataListings:data,layout:'layout-plain'});
    });
  },

  listingsList:function(req,res){
    //return res.json(req.allParams());
    let opts = req.allParams();
    if(!opts.sort)opts.sort = 'createdAt DESC';
    Listings.searchListings(opts,function(err,data){
      if(err)return res.negotiate(err);
      //TEST PARAMETER
      // return res.json(data);
      if(data.length<1){
        //return res.json({message:'Tidak satu Listingpun ditemukan',dataLength:data.length});
         return res.searchNotFound('Listing yang anda cari tidak ditemukan!');
      }
      if(req.path === '/listings'){
        return res.view('pages/listings',{dataListings:data,layout:'layout-plain'});}
      if(req.path === '/findinmaps'){
        let dataLocation = [];
        let len = data.length;
        for (let i = 0; i < len; i++) {
        dataLocation.push(
        {
          lat:Number(data[i].lat),
          lng:Number(data[i].lng),
          id:data[i].id,
          title:data[i].title,
          price:data[i].price,
          address:data[i].address,
          agent:data[i].agent,
          picture:data[i].pictures[0].name
        }
        );
      }
        // return res.json({dataListings:data,dataCoords:dataLocation});
        return res.view('pages/maps',{dataListings:data,dataCoords:dataLocation,layout:'layout-plain'});
      }
    });
  },
  
  listingDetail:function(req,res){
    Listings.findOne({id:req.param('id')}).populate('pictures').populate('agent').exec(function(err,data){
    	// if(err)return res.send(err);
    	if(err)return res.negotiate(err);
    	if(!data)return res.notFound(req.param('id')+'tidak dapat ditemukan');
    	return res.view('pages/listing-detail',{dataListings:data,layout:'layout-plain'});
      // return res.json(data);
    });
  },
  
  findInMaps:function(req,res){
  	Listings.s(req.allParams(),function(err,data){
  		if(err)return res.send(err);
  		return res.view('pages/maps',{dataListings:data,layout:'layout-plain'});
  	});
  },
  
  listingsManage:function(req,res){
    const user = req.session.user;
    let opts = req.allParams();
    if (user.role === 'administrator') {} else {opts.agent = user.no}
    Listings.find(opts).exec(function(err,data){
      return res.view('dashboards/listings-manage',{dataListings:data,layout:'layout-dashboards'});
      // return res.json(user);
    });
  },

  listingForm:(req,res)=>{

    res.view('dashboards/listing-form',{layout:'layout-dashboards',dataEdit:null});
  
  },
  
  listingInsert:function(req,res){
    var params = req.allParams();
    // return res.json(params);
    // Create Property ID
    Listings.createId(function(err,id){
      params.id = id;
      var owner = parseInt(id.replace('lst',''));
     
   
    // Upload Picture
    req.file('pictures').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles){
      if(err)return res.serverError(err);
      var fileName = require('path').basename(uploadedFiles[0].fd);
      var filePath = '/uploads/'+fileName;
      //return res.json({name:'gambar',path:filePath,owner:'p1'});

    // Insert FileName and Path to Database
     Files.create({name:fileName,path:filePath,owner:owner}).exec(function(err,data){
     if(err)return res.negotiate(err);
    
     // Insert Property Record to Database 
     Listings.create(params).exec(function(err,data){
       if(err)return res.negotiate(err);
       //return res.json(data);
       return res.redirect('dashboards/listings/manage');

     });//End Listings.create()
   
    });//End Files.create()
  


    });//End req.file('pictures')
  });//End createId()
  },
  
  listingEdit:function(req,res){
    Listings.findOne({id:req.param('id')}).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.view('dashboards/listing-form',{dataEdit:data,layout:'layout-dashboards'});
    });
  },

  listingEditPost:function(req,res){
    let params = req.allParams();
    delete params.pictures;
    //return res.json(params);
    Listings.update({no:params.no},params).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.redirect('dashboards/listings/manage');
    });
  },
  
  listingDelete:function(req,res){
		Listings.destroy({id:req.param('id')}).exec(function(err,data){
			if(err) return res.negotiate(err);
      return res.json(data.id);
		})
	}

};
