/**
 * MessagesController
 *
 * @description :: Server-side logic for managing messages
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:(req,res)=>{
		res.view('dashboards/messages',{layout:"layout-dashboards"});
	},

	messagesList:(req,res)=>{
		const receiver = req.session.user;
		let opts = {};
		opts = {receiver:receiver.no};
		Messages.find(opts).populate('receiver').populate('sender').sort('createdAt DESC').exec((err,data)=>{
			if(err)return res.serverError(err);
			// res.json(data);
			return res.view('dashboards/messages',{dataMessages:data,layout:'layout-dashboards'})
		});
	},
	
	messageCreate:(req,res)=>{
		var params = req.allParams();
		Messages.createId((err,id)=>{
			params.id = id;
			Messages.create(params).exec((err,data)=>{
				if(err)return res.negotiate(err);
				return res.json(data);
			});
		});
	},
	messageDelete:(req,res)=>{
		Messages.destroy({id:req.param('id')}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	}
};

