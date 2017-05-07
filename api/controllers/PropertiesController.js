/**
 * PropertyController
 *
 * @description :: Server-side logic for managing properties
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	main:function(req,res){
		res.send('PropertyController.index');
	},
	
  s:function(req,res){
		Properties.s(req.allParams(),function(err,data){
			if(err)res.send(err);
			res.send(data);
		});
	},
	
  getCoords:function(req,res){
    Properties.find().exec(function(err,data){
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
	
  listing:function(req,res){
    //return res.json(req.allParams());
    Properties.searchListing(req.allParams(),function(err,data){
      if(err)return res.negotiate(err);
      //TEST PARAMETER
      // return res.json(data);
      if(data.length<1){
        //return res.json({message:'Tidak satu Listingpun ditemukan',dataLength:data.length});
         return res.searchNotFound('Listing yang anda cari tidak ditemukan!');
      }
      if(req.path === '/listing'){
      return res.view('pages/listing',{dataProperties:data,layout:'layout-plain'});}
      if(req.path === '/findinmaps'){
      return res.view('pages/maps',{dataProperties:data,layout:'layout-plain'});
      }
    });
  },
  
  listingDetail:function(req,res){
    Properties.findOne({id:req.param('id')}).populate('pictures').populate('idUser').exec(function(err,data){
    	// if(err)return res.send(err);
    	if(err)return res.negotiate(err);
    	if(!data)return res.notFound(req.param('id')+'tidak dapat ditemukan');
    	return res.view('pages/listing-detail',{dataProperties:data});
      // return res.json(data);
    });
  },
  
  findInMaps:function(req,res){
  	Properties.s(req.allParams(),function(err,data){
  		if(err)return res.send(err);
  		return res.view('pages/maps',{dataProperties:data,layout:'layout-plain'});
  	});
  },
  
  listingManage:function(req,res){
    var user = req.session.user;
    var opts = {};
    if (user.role === 'administrator') {opts = {}} else {opts = {idUser:user.no}}
    Properties.find(opts).exec(function(err,data){
      return res.view('admin/listing-manage',{dataProperty:data,layout:'layout-admin'});
      // return res.json(user);
    });
  },
  
  listingInsert:function(req,res){
    var params = req.allParams();

    // Create Property ID
    Properties.createId(function(err,id){
      params.id = id;
      var idOwner = parseInt(id.replace('p',''));
     
   
    // Upload Picture
    req.file('pictures').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles){
      if(err)return res.serverError(err);
      var fileName = require('path').basename(uploadedFiles[0].fd);
      var filePath = '/uploads/'+fileName;
      //return res.json({name:'gambar',path:filePath,idOwner:'p1'});

    // Insert FileName and Path to Database
     Files.create({name:fileName,path:filePath,idOwner:idOwner}).exec(function(err,data){
     if(err)return res.negotiate(err);
    
     // Insert Property Record to Database 
     Properties.create(params).exec(function(err,data){
       if(err)return res.negotiate(err);
       //return res.json(data);
       return res.redirect('admin/listing/manage');

     });//End Properties.create()
   
    });//End Files.create()
  


    });//End req.file('pictures')
  });//End createId()
  },
  
  listingEdit:function(req,res){
    Properties.findOne({id:req.param('id')}).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.view('admin/listing-form',{dataEdit:data,layout:'layout-admin'});
    });
  },

  listingEditPost:function(req,res){
    var params = req.allParams();
    delete params.pictures;
    //return res.json(params);
    Properties.update({no:params.no},params).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.redirect('admin/listing/manage');
    });
  },
  
  listingDelete:function(req,res){
		Properties.destroy({id:req.param('id')}).exec(function(err,data){
			if(err) return res.negotiate(err);
			return res.ok(data.id+' berhasil dihapus');
		})
	}

};
