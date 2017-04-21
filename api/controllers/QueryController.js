/**
 * QueryController
 *
 * @description :: Server-side logic for managing queries
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	getProperties:function(req,res){
		id = req.param('id');
		Properties.query('SELECT properties.id, properties.idUser, properties.title, files.path FROM properties INNER JOIN files ON properties.no=files.idOwner ORDER BY properties.id',[],function(err,result){
			if(err){return res.serverError(err);}
			return res.send(result);
		});
	}
};

