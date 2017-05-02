/**
 * UsersController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:function(req,res){
      res.view('pages/user');
    },
    response:function(req,res){
      res.json({name:req.body.name.toUpperCase(),role:req.param('role').toUpperCase(),ip:req.ip});
    },
    checkLogin:function(req,res){
      if (!req.session.user) return res.redirect('/login');
      return res.view('admin/dashboard',{layout:'layout-admin'});
      
    },
    login:function(req,res){
    
      Users.findOne(req.allParams()).exec(function(err,data){
        if(err) return //res.negotiate(err);
        if(!data) return res.json({pesan:'username / password salah!'});
        req.session.user = data;
        return res.view('admin/dashboard',{layout:'layout-admin'});
        //return res.redirect('/admin');
      });

    },

    logout:function(req,res){
      // req.session.destroy((err)=>{
      //   setTimeout(function(){
      //     // return res.redirect('/login');
      //     return res.view('pages/user-logout',{user: null,message: 'Logout Berhasil!'});
      //     // return res.view('pages/user-login');

      //   }, 10);
      // });
      req.session.user = null;
       return res.view('pages/user-logout',{message: 'Logout Berhasil!'});
    },

    findUser:function(req,res){
        Users.find({id:req.param('id')}).exec(function(err,data){
        if(err){
        return res.send(err);//res.serverError(err);

        }
            return res.json(data);
        })
    },

    userManage:function(req,res){
      Users.find().exec(function(err,data){
        if(err)return res.negotiate(err);
        return res.view('admin/user-manage',{dataUsers:data,layout:'layout-admin'})
      });
    },

    userInsert:function(req,res){
    var params = req.allParams();
    Users.createId(function(err,id){
      params.id = id;
    
    Users.create(params).exec(function(err,data){
      if(err)return res.negotiate(err);

        //return res.json(params);
        return res.redirect('/admin/user/manage');
      
      });//End Users.create()
    });//End createId()
    },

    userEdit:function(req,res){
      Users.findOne({id:req.param('id')}).exec(function(err,data){
        if(err)return res.negotiate(err);
        return res.view('admin/user-form',{dataEdit:data,layout:'layout-admin'});
    });
    },

    userEditPost:function(req,res){
      var params = req.allParams();
      delete params.picture;
      //return res.json(params);
      Users.update({no:params.no},params).exec(function(err,data){
        if(err)return res.negotiate(err);
        return res.redirect('admin/user/manage');
    });
    },

    userDelete:function(req,res){
      Users.destroy({id:req.param('id')}).exec(function(err,data){
        if(err)return res.serverError(err);
            return res.ok(data.id+' berhasil dihapus');
        });
    },

    agentListing:function(req,res){
      Users.find({role:'agen'}).exec(function(err,data){
        if (err)return res.negotiate(err);
        return res.view('pages/agent-listing',{dataAgents:data,layout:'layout-plain'});
      });
    },

    agentDetail:function(req,res) {
      Users.findOne({id:req.param('id')}).exec(function(err,data){
        if (err)return res.negotiate(err);
        return res.view('pages/agent-detail',{dataAgent:data});
      });
    }
    
};

