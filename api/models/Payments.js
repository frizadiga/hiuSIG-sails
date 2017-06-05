/**
 * Payments.js
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
  	listing:{
  		model:'listings'
  	},
  	customer:{
  		model:'users',
  		dominant:false
  	},
  	agent:{
  		model:'users',
  		dominant:false
  	},
    accountOwner:{
      type:'string'
    },
    email:{
      type:'email'
    },
    phone:{
      type:'string'
    },
    paidOn:{
      type:'date'
    },
    fromBank:{
      type:'string'
    },
    toBank:{
      type:'string'
    },
    amount:{
      type:'integer'
    },
  	message:{
      type:'string'
    },
    status:{
      type:'string'
    },
    proof:{
      type:'string'
    }
  },

  createId:function(cb){
    let query = Payments.find();
    //let sort = 'id DESC';
    query.sort('no DESC');
    query.exec((err,data)=> {
      if(err)return cb(err);
      let id = 'pyt'+(data[0].no+1);
      cb(err,id);
    });
  }

};

