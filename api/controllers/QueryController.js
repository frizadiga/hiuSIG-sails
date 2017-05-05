/**
 * QueryController
 *
 * @description :: Server-side logic for managing queries
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  test:(req,res)=>{
     Properties.findOne({id:req.param('id')}).populate('pictures').populate('idUser').exec(function(err,data){
      if(err)return res.json(err);
      // if(!data)return res.notFound(req.param('id')+'tidak dapat ditemukan');
      return res.json(data);
    });
  },
  getAllProperties:function(req,res){
    id = req.param('id');
	  Properties.query('SELECT properties.id, properties.title, properties.idUser, files.path FROM properties INNER JOIN files ON properties.no=files.idOwner ORDER BY properties.id',[],function(err,result){
	  if(err){return res.serverError(err);}
        return res.send(result);
	  });
	},
	getAllAgent:(req,res)=>{
    Properties.query('SELECT * from properties INNER JOIN users ON properties.idUser=users.no',[],(err,result)=>{
    	if(err){return res.serverError(err);}
    	  return res.send(result);
    });
	}
};

