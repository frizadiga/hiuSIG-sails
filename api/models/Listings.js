/**
 * Listings.js
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
    floors:{
      type:'integer'
    },
    beds:{
      type:'integer'
    },
    baths:{
      type:'integer'
    },
    description:{
      type:'string'
    },
    sor:{
      columnName:'sold_or_rented',
      type:'boolean',
      defaultTo:true
    },
    pictures:{
      collection:'files',
      via:'owner'
    },
    agent:{
      model:'users'
    }
    
  },

  s:function(opts,cb){
    Listings.find(opts).populate('pictures').populate('agent').exec((err,data)=> {
      if(err)return cb(err);
      cb(err,data);
    });
  },

  c:function(opts,cb){
    Listings.create(opts).exec((err,data)=>{
      if(err)return cb(err);
      cb(err,data);
    });
  },

  createId:function(cb){
    let query = Listings.find();
    //let sort = 'no DESC';
    query.sort('no DESC');
    query.exec((err,data)=> {
      if(err)return cb(err);
      var id = 'lst'+(data[0].no+1);
      cb(err,id);
    });
  },

  searchListings:function(params,cb){
    
    //REDUCE PARAMETERS
    var status, type, location;
    if(params.status === '') delete params.status;
    if(params.type === '') delete params.type;
    if(params.floors === '') delete params.floors;
    if(params.baths === '') delete params.baths;
    if(params.beds === '') delete params.beds;
    if(params.lotSize === '') delete params.lotSize;
    if(params.buildingSize === '') delete params.buildingSize;
    if(params.minPrice === '') delete params.minPrice;
    if(params.maxPrice === '') delete params.maxPrice;
    
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
    query = Object.assign({},params,queryLocation);
    Listings.find(query).populate('pictures').populate('agent').exec(function(err,data){
      if(err)return cb(err);
      cb(err,data);
    });

  },

  newListings:(params,cb)=>{
    Listings.find({sort:'createdAt DESC',limit:6}).populate('pictures').populate('agent').exec((err,data)=>{
      if(err)return cb(err);
      cb(err,data);
    });
  }


};

