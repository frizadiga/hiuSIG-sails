/**
 * TestController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
	index:(req,res)=>{
		res.json({message:'TestController Worked!...'});
	},
	agentListing:function(req,res){
	  Users.find({role:'agen'}).exec((err,data)=>{
	    if (err)return res.negotiate(err);
	    // return res.view('pages/agent-listing',{dataAgents:data,layout:'layout-plain'});
	    return res.json(data);
	  });
	}

};

