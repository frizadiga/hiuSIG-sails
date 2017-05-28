/**
 * PaymentsController
 *
 * @description :: Server-side logic for managing payments
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	paymentsList:(req,res)=>{
		const agent = req.session.user;
		let opts = {};
		opts = {agent:agent.no};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('buyer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments',{dataPayments:data,layout:'layout-dashboards'});
		});
	},
	paymentCreate:(req,res)=>{
		var params = req.allParams();
		Payments.createId((err,id)=>{
			params.id = id;
			Payments.create(params).exec((err,data)=>{
				if(err)return res.negotiate(err);
				return res.json(data);
			});
		});
	}
};

