/**
 * QueryController
 *
 * @description :: Server-side logic for managing queries
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  test:(req,res)=>{
     Listings.findOne({id:req.param('id')}).populate('pictures').populate('idUser').exec(function(err,data){
      if(err)return res.json(err);
      // if(!data)return res.notFound(req.param('id')+'tidak dapat ditemukan');
      return res.json(data);
    });
  },
  getAllListings:function(req,res){
    id = req.param('id');
	  Listings.query('SELECT listings.id, listings.title, listings.idUser, files.path FROM listings INNER JOIN files ON listings.no=files.idOwner ORDER BY listings.id',[],function(err,result){
	  if(err){return res.serverError(err);}
        return res.send(result);
	  });
	},
	getAllAgent:(req,res)=>{
    Listings.query('SELECT * from listings INNER JOIN users ON listings.idUser=users.no',[],(err,result)=>{
    	if(err){return res.serverError(err);}
    	  return res.send(result);
    });
	}
};

