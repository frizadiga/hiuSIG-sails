/**
 * QueryController
 *
 * @description :: Server-side logic for managing queries
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  getAllProperties:function(req,res){
    id = req.param('id');
	  Properties.query('SELECT properties.id, properties.title, properties.idUser, files.path FROM properties INNER JOIN files ON properties.no=files.idOwner ORDER BY properties.id',[],function(err,result){
	  if(err){return res.serverError(err);}
        return res.send(result);
	  });
	},
	getAllAgent:(req,res)=>{
      Properties.query('SELECT properties.idUser,users.username from properties INNER JOIN users ON properties.idUser=users.no',[],(err,result)=>{
      	if(err){return res.serverError(err);}
      	  return res.send(result);
      });
	}
};

