/**
 * Users.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    no:{
      type:'integer',
      autoIncrement:true,
      primaryKey:true
    },
    id:{
      type:'string',
      unique:true
    },
    username:{
      type:'string'
    },
    role:{
      type:'string'
    },
    password:{
      type:'string'
    },
    name:{
      type:'string'
    },
    phone:{
      type: 'string'
    },
    email:{
      type:'string'
    },
    avatar:{
      type:'string'
    },
    properties:{
      collection:'properties',
      via:'idUser'
    }
  },

  createId:function(cb){
    let query = Users.find();
    //let sort = 'id DESC';
    query.sort('id DESC');
    query.exec((err,data)=> {
      if(err)return cb(err);
      var id = 'u'+(data[0].no+1);
      cb(err,id);
    });
  }
 
};
