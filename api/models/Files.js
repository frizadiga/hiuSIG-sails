/**
 * Files.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id:{
      type:'integer',
      autoIncrement:true,
      primaryKey:true
    },
    name:{
    	type:'string'
    },
    path:{
    	type:'string'
    },
    idOwner:{
        model:'properties'
    },
  },

  upload:function(params,cb) {
  params.file('file').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles) {
    if(err)return res.serverError(err);
    var fileName = require('path').basename(uploadedFiles[0].fd);
    var fileURL = require('util').format('%s/uploads/%s',sails.getBaseUrl(), fileName);
    console.log('fileURL: ',fileURL);
  var filePath='/uploads/'+fileName;
  Files.create({name:params.param('name'),path:filePath}).exec(function(err,data){
    if(err) return res.negotiate(err);
  });
    // return res.json(uploadedFiles);
    return res.send('<pre>'+JSON.stringify(uploadedFiles,undefined,2)+'</pre><a href="'+fileURL+'">upload link</a>');

  });
  }

};

