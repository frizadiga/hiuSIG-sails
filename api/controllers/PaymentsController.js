/**
 * PaymentsController
 *
 * @description :: Server-side logic for managing payments
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	
	paymentsList:(req,res)=>{
		const customer = req.session.user;
		let opts = {};
		opts = {customer:customer.no};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments',{dataPayments:data,layout:'layout-dashboards'});
		});
	},

	paymentDetail:(req,res)=>{
		Payments.findOne({id:req.param('id')}).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json({dataPayments:data});
		});
	},

	paymentsDpList:(req,res)=>{
		const customer = req.session.user;
		let opts = {};
		opts = {customer:customer.no};
		opts.status = {'contains':'dp'};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments-dp',{dataPayments:data,layout:'layout-dashboards'});
		});
	},

	paymentsRepaymentList:(req,res)=>{
		const customer = req.session.user;
		let opts = {};
		opts = {customer:customer.no};
		opts.status = {'contains':'pelunasan'};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments-repayment',{dataPayments:data,layout:'layout-dashboards'});
		});
	},
	
	paymentsConfirm:(req,res)=>{
		const agent = req.session.user;
		let opts = {};
		opts = {agent:agent.no};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments-confirm',{dataPayments:data,layout:'layout-dashboards'});
		});
	},
	
	paymentsDpConfirm:(req,res)=>{
		const agent = req.session.user;
		let opts = {};
		opts = {agent:agent.no};
		opts.status = {'contains':'dp'};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments-dp-confirm',{dataPayments:data,layout:'layout-dashboards'});
		});
	},

	paymentsRepaymentConfirm:(req,res)=>{
		const agent = req.session.user;
		let opts = {};
		opts = {agent:agent.no};
		opts.status = {'contains':'pelunasan'};
		opts.sort = 'createdAt DESC';
		Payments.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/payments-repayment-confirm',{dataPayments:data,layout:'layout-dashboards'});
		});
	},

	paymentCreate:(req,res)=>{
		// return res.json(req.allParams());
		Payments.createId((err,id)=>{
		let params = req.allParams();
			params.id = id;
			params.status = 'belum bayar';
			Payments.create(params).exec((err,data)=>{
				if(err)return res.negotiate(err);
				return res.json(data);
			});
		});
	},

	pay:(req,res)=>{
		const dataPay = {
			noPayment:'pyt1',
			amount:1500000000
		}
		return res.view('dashboards/pay',{dataPay:dataPay,layout:'layout-dashboards'});
	},

	hasPaid:(req,res)=>{
		// return res.json(req.allParams());
		let params = req.allParams();
			params.status = 'pending';
			Payments.update({id:params.noPayment},params).exec((err,data)=>{
				if(err)return res.negotiate(err);
				return res.json(data);
			});
	},

	paymentApproved:(req,res)=>{
		Payments.update({id:req.param('id')},{status:'approved'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},

	payDp:(req,res)=>{
		let params = req.allParams();
		params.status = 'pending dp';
		params.remainingPayment = params.listingPrice - params.dp;
		// return res.json(params);
		Payments.update({id:req.param('id')},params).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
			return res.redirect(req.get('referer'));
		});
	},

	payRepayment:(req,res)=>{
		let params = req.allParams();
		params.status = 'pending pelunasan';
		Payments.update({id:req.param('id')},params).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},

	dpApproved:(req,res)=>{
		Payments.update({id:req.param('id')},{status:'dp lunas & menunggu pelunasan'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},

	dpDenied:(req,res)=>{
		Payments.update({id:req.param('id')},{status:'belum bayar'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},

	repaymentApproved:(req,res)=>{
		Payments.update({id:req.param('id')},{status:'pelunasan lunas'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},

	repaymentDenied:(req,res)=>{
		Payments.update({id:req.param('id')},{status:'dp lunas & menunggu pelunasan'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	}

};

