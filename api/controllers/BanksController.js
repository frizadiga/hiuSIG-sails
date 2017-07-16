/**
 * BanksController
 *
 * @description :: Server-side logic for managing banks
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	
	bankForm:(req,res)=>{
    res.view('dashboards/bank-form',{layout:'layout-dashboards',dataEdit:null});
  },

	banksManage:function(req,res){
    Banks.find().exec(function(err,data){
      if(err)return res.negotiate(err);
        return res.view('dashboards/banks-manage',{dataBanks:data,layout:'layout-dashboards'})
      });
  },

  bankInsert:function(req,res){
    var params = req.allParams();
    var query;
    // Create User ID
    Banks.createId(function(err,id){
      params.id = id;

    query = Object.assign({},params);
    // Insert User Record to Database
    Banks.create(query).exec(function(err,data){
      if(err)return res.negotiate(err);

        //return res.json(params);
        return res.redirect('/dashboards/banks/manage');
      
      });//End Banks.create()
    });//End createId()
    },

  bankEdit:function(req,res){
    Banks.findOne({id:req.param('id')}).exec(function(err,data){
      if(err)return res.negotiate(err);
        return res.view('dashboards/bank-form',{dataEdit:data,layout:'layout-dashboards'});
    });
  },

  bankEditPost:function(req,res){
    var params = req.allParams();
    // return res.json(params);
    Banks.update({no:params.no},params).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.redirect('dashboards/banks/manage');
    });
  },

  bankDelete:function(req,res){
    Banks.destroy({id:req.param('id')}).exec(function(err,data){
      if(err)return res.serverError(err);
        return res.json(data.id);
      });
  }

};

