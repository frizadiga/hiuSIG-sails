/**
 * CrudController
 *
 * @description :: Server-side logic for managing cruds
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:function(req,res){
        return res.view('pages/crud',{title:'crud UI'});
    }
};

