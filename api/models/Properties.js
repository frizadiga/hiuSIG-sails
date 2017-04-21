/**
 * Properties.js
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
    title:{
      type:'string'
    },
    status:{
      type:'string'
    },
    type:{
      type:'string'
    },
    price:{
      type:'integer'
    },
    province:{
      type:'string'
    },
    city:{
      type:'string'
    },
    address:{
      type:'string'
    },
    lat:{
      type:'string'
    },
    lng:{
      type:'string'
    },
    lotSize:{
      type:'string'
    },
    buildingSize:{
      type:'string'
    },
    floor:{
      type:'integer'
    },
    bed:{
      type:'integer'
    },
    bath:{
      type:'integer'
    },
    description:{
      type:'string'
    },
    pictures:{
      collection:'files',
      via:'idOwner'
    },
    idUser:{
      model:'users'
    }
    
  },

  s:function(opts,cb){
    Properties.find(opts).populate('pictures').populate('idUser').exec((err,data)=> {
      if(err)return cb(err);
      cb(err,data);
    });
  },

  c:function(opts,cb){
    Properties.create(opts).exec((err,data)=>{
      if(err)return cb(err);
      cb(err,data);
    });
  },

  createId:function(cb){
    let query = Properties.find();
    //let sort = 'no DESC';
    query.sort('no DESC');
    query.exec((err,data)=> {
      if(err)return cb(err);
      var id = 'p'+(data[0].no+1);
      cb(err,id);
    });
  },

  searchListing:function(params,cb){
    var status, type, location;
    if(params.status === '') delete params.status;
    if(params.type === '') delete params.type;
    if(params.location === ''){
      location = '';
    }else if(params.location!=='' && params.location){
      location = params.location;
    }else{
      location = '';
    }
    delete params.location;
    //TEST PARAMETER
     //cb(params);
    
    var query,queryLocation;
    queryLocation = {
      address:{'contains':location}
    };
    query = Object.assign(params,queryLocation);
    Properties.find(query).populate('pictures').populate('idUser').exec(function(err,data){
      if(err)return cb(err);
      cb(err,data);
    });

  }


};

