/**
 * FilesController
 *
 * @description :: Server-side logic for managing files
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
  view:function(req,res){
    // res.writeHead(200,{'content-type':'text/html'});
    // res.end(
    res.send(
    '<form action="/files/uploadfile" enctype="multipart/form-data" method="POST">'+
    '<input type="text" name="name" placeholder="Name"><br>'+
    '<input type="file" name="file" multiple="multiple"><br>'+
    '<button type="submit">upload</button><br>'+
    '</form>'
    )
  },
  uploadFile:(req,res)=>{
    Files.upload(req.allParams(),function(err,data){
      if(err) return res.send(err);
      return res.ok();
    });
  }
	// uploadFile:function(req,res) {
	// 	req.file('file').upload({dirname:require('path').resolve(sails.config.appPath,'assets/uploads')},function(err,uploadedFiles) {
	// 		if(err)return res.serverError(err);
 //      var fileName = require('path').basename(uploadedFiles[0].fd);
 //      var fileURL = require('util').format('%s/uploads/%s',sails.getBaseUrl(), fileName);
	// 	  console.log('fileURL: ',fileURL);
 //    var filePath='/uploads/'+fileName;
 //    Files.create({name:req.param('name'),path:filePath}).exec(function(err,data){
 //      if(err) return res.negotiate(err);
 //    });
 //      // return res.json(uploadedFiles);
 //      return res.send('<pre>'+JSON.stringify(uploadedFiles,undefined,2)+'</pre><a href="'+fileURL+'">upload link</a>');

 //  });
	// }
  

};

