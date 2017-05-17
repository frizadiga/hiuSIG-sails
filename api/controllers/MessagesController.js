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
		Messages.find(opts).populate('receiver').populate('sender').exec((err,data)=>{
			if(err)return res.negotiate(err);
			// res.json(data);
			res.view('admin/messages',{dataMessages:data,layout:'layout-admin'})
		});
	}
};

