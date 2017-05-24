/**
 * Bookings.js
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
  	property:{
  		model:'listings'
  	},
  	buyer:{
  		model:'users',
  		dominant:false
  	},
  	agent:{
  		model:'users',
  		dominant:false
  	},
  	message:{
      type:'string'
    },
    status:{
      type:'string'
    }

  },

   createId:function(cb){
    let query = Bookings.find();
    //let sort = 'id DESC';
    query.sort('no DESC');
    query.exec((err,data)=> {
      if(err)return cb(err);
      var id = 'b'+(data[0].no+1);
      cb(err,id);
    });
  }

};

