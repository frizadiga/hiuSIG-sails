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
  		model:'properties'
  	},
  	buyer:{
  		model:'users',
  		dominant:false
  	},
  	agent:{
  		model:'users',
  		dominant:false
  	},
  	message:'string'
  }
};

