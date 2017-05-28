/**
 * TestController
 *
 * @description :: Server-side actions for handling incoming requests.
 * @help        :: See https://sailsjs.com/docs/concepts/actions
 */

module.exports = {
	
	index:(req,res)=>{
		return res.json({message:'TestController Worked!...'});
	},
	
	allParams:(req,res)=>{
		return res.json(req.allParams());
	},

	getSession:(req,res)=>{
		return res.json({session:req.session,userSession:req.session.user});
	},

	bookingsList:(req,res)=>{
		Bookings.find({}).populate('property').populate('buyer').populate('agent').exec((err,data)=>{
			if(err)return res.json(err);
			return res.json(data);
			// return res.view('admin/bookings',{dataBookings:data,layout:'layout-admin'});
		});
	},

	agentListing:function(req,res){
	  Users.find({role:'agen'}).exec((err,data)=>{
	    if (err)return res.negotiate(err);
	    // return res.view('pages/agent-listing',{dataAgents:data,layout:'layout-plain'});
	    return res.json(data);
	  });
	}

};

