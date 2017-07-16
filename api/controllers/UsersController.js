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
    return res.view('dashboards/dashboard',{layout:'layout-dashboards'});
      
  },
  
  login:function(req,res){
    Users.findOne(req.allParams()).exec(function(err,data){
      if(err) return res.negotiate(err);
      if(!data) return res.json({pesan:'username / password salah!'});
      req.session.user = data;
      return res.redirect('/dashboards');
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

  usersManage:function(req,res){
    Users.find().exec(function(err,data){
      if(err)return res.negotiate(err);
        return res.view('dashboards/users-manage',{dataUsers:data,layout:'layout-dashboards'})
      });
  },

  agentsConfirm:function(req,res){
    params = {};
    params.role = 'agent';
    params.status = 'pending'
    Users.find(params).exec(function(err,data){
      if(err)return res.negotiate(err);
        return res.view('dashboards/agents-confirm',{dataUsers:data,layout:'layout-dashboards'})
      });
  },

  userForm:(req,res)=>{
    res.view('dashboards/user-form',{layout:'layout-dashboards',dataEdit:null});
  },

  userInsert:function(req,res){
    var params = req.allParams();
    if(!params.role)params.role = 'member'
    var query;
    // Create User ID
    Users.createId(function(err,id){
      params.id = id;

    // Upload Avatar
    req.file('avatar').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles){
      if(err)return res.serverError(err);
      var fileName = require('path').basename(uploadedFiles[0].fd);
      var filePath = '/uploads/'+fileName;
      //return res.json({name:'gambar',path:filePath,idOwner:'p1'});

      // Insert FileName and Path to Database
      // Files.create({name:fileName,path:filePath,idOwner:idOwner}).exec(function(err,data){
      // if(err)return res.negotiate(err);
    query = Object.assign({},params,{avatar:fileName});
    // Insert User Record to Database
    Users.create(query).exec(function(err,data){
      if(err)return res.negotiate(err);

        //return res.json(params);
        return res.redirect('/dashboards/users/manage');
      
      });//End Users.create()
      // });//End Files.create()
      });//End req.file('pictures')
    });//End createId()
    },

  userEdit:function(req,res){
    Users.findOne({id:req.param('id')}).exec(function(err,data){
      if(err)return res.negotiate(err);
        return res.view('dashboards/user-form',{dataEdit:data,layout:'layout-dashboards'});
    });
  },

  userEditPost:function(req,res){
    var params = req.allParams();
    delete params.avatar;
    // return res.json(params);
    Users.update({no:params.no},params).exec(function(err,data){
      if(err)return res.negotiate(err);
      return res.redirect('dashboards/users/manage');
    });
  },

  userDelete:function(req,res){
    Users.destroy({id:req.param('id')}).exec(function(err,data){
      if(err)return res.serverError(err);
        return res.json(data.id);
      });
  },

  agentsList:function(req,res){
    const opts = req.allParams();
    opts.role = 'agent';
    Users.find(opts).exec(function(err,data){
      if (err)return res.negotiate(err);
        return res.view('pages/agent-list',{dataAgents:data,layout:'layout-plain'});
    });
  },

  agentDetail:function(req,res) {
    Users.findOne({id:req.param('id')}).exec(function(err,data){
      if (err)return res.negotiate(err);
      return res.view('pages/agent-detail',{dataAgent:data});
    });
  },

  userSignup:function(req,res){
    var params = req.allParams();
    var query;
    // Create User ID
    Users.createId(function(err,id){
      params.id = id;

    // Upload Avatar
    req.file('avatar').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles){
      if(err)return res.serverError(err);
      var fileName = require('path').basename(uploadedFiles[0].fd);
      var filePath = '/uploads/'+fileName;
      //return res.json({name:'gambar',path:filePath,idOwner:'p1'});

      // Insert FileName and Path to Database
      // Files.create({name:fileName,path:filePath,idOwner:idOwner}).exec(function(err,data){
      // if(err)return res.negotiate(err);
    query = Object.assign({},params,{avatar:fileName},{role:'member'},{status:'on'});
    // Insert User Record to Database
    Users.create(query).exec(function(err,data){
      if(err)return res.negotiate(err);

        //Redirect to dashboard
        req.session.user = data;
        return res.redirect('/dashboards');
      
      });//End Users.create()
      // });//End Files.create()
      });//End req.file('pictures')
    });//End createId()
    },

  agentSignup:function(req,res){
    var params = req.allParams();
    var query;
    // Create User ID
    Users.createId(function(err,id){
      params.id = id;

    // Upload Avatar
    req.file('avatar').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles){
      if(err)return res.serverError(err);
      var fileName = require('path').basename(uploadedFiles[0].fd);
      var filePath = '/uploads/'+fileName;
      //return res.json({name:'gambar',path:filePath,idOwner:'p1'});

      // Insert FileName and Path to Database
      // Files.create({name:fileName,path:filePath,idOwner:idOwner}).exec(function(err,data){
      // if(err)return res.negotiate(err);
    query = Object.assign({},params,{avatar:fileName},{role:'agent'},{status:'pending'});
    // Insert User Record to Database
    Users.create(query).exec(function(err,data){
      if(err)return res.negotiate(err);

        //Redirect to dashboard
        req.session.user = data;
        return res.redirect('/dashboards');
      
      });//End Users.create()
      // });//End Files.create()
      });//End req.file('pictures')
    });//End createId()
    },

    agentApproved:(req,res)=>{
      Users.update({id:req.param('id')},{status:'on'}).exec((err,data)=>{
        if(err)return res.negotiate(err);
        return res.send(data.id);
      });
    },

    agentDenied:(req,res)=>{
      Users.destroy({id:req.param('id')}).exec((err,data)=>{
        if(err)return res.negotiate(err);
        return res.send(data.id);
      });
    }
    
};

