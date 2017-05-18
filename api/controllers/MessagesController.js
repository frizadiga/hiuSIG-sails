/**
 * MessagesController
 *
 * @description :: Server-side logic for managing messages
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:(req,res)=>{
		res.view('admin/messages',{layout:"layout-admin"});
	},

	messagesList:(req,res)=>{
		const receiver = req.session.user;
		let opts = {};
		opts = {receiver:receiver.no};
		Messages.find(opts).populate('receiver').populate('sender').sort('createdAt DESC').exec((err,data)=>{
			if(err)return res.negotiate(err);
			// res.json(data);
			return res.view('admin/messages',{dataMessages:data,layout:'layout-admin'})
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

