/**
 * Crud.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id:{
      type:'string',
      primaryKey:true
    },
    value1:{
      type:'string'
    },
    value2:{
      type:'string'
    }
  }
};

