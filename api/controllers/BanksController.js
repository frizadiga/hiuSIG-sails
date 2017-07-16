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

	banksManage:(req,res)=>{
    Banks.find().exec((err,data)=>{
      if(err)return res.negotiate(err);
        return res.view('dashboards/banks-manage',{dataBanks:data,layout:'layout-dashboards'})
      });
  },

  bankInsert:(req,res)=>{
    var params = req.allParams();
    var query;
    // Create User ID
    Banks.createId((err,id)=>{
      params.id = id;

    query = Object.assign({},params);
    // Insert User Record to Database
    Banks.create(query).exec((err,data)=>{
      if(err)return res.negotiate(err);

        //return res.json(params);
        return res.redirect('/dashboards/banks/manage');
      
      });//End Banks.create()
    });//End createId()
    },

  bankEdit:(req,res)=>{
    Banks.findOne({id:req.param('id')}).exec((err,data)=>{
      if(err)return res.negotiate(err);
        return res.view('dashboards/bank-form',{dataEdit:data,layout:'layout-dashboards'});
    });
  },

  bankEditPost:(req,res)=>{
    var params = req.allParams();
    // return res.json(params);
    Banks.update({no:params.no},params).exec((err,data)=>{
      if(err)return res.negotiate(err);
      return res.redirect('dashboards/banks/manage');
    });
  },

  bankDelete:(req,res)=>{
    Banks.destroy({id:req.param('id')}).exec((err,data)=>{
      if(err)return res.serverError(err);
        return res.json(data.id);
      });
  },

  fetchBanksList:(req,res)=>{
  	Banks.find({}).exec((err,data)=>{
  		if(err)return res.serverError(err);
  			return res.json(data);
  	});
  }

};

