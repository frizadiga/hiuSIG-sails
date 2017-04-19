/**
 * PagesController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	indexPage:function(req,res){
    let greetings = 'welcome waVers!';
    sails.log(greetings);
    console.log(greetings);
    return res.send('<h1>'+greetings);
    },
  urlSlug:function(req,res){
    res.send(req.allParams());
    // res.send("<h3>urlslug worked</h3>");
  },
  propertiesInsertEdit:function(req,res){
    if(req.param('mode')==insert){
    	return res.view('admin/listing/form',{layout:'layout-admin'})
    }
  }
  
};

