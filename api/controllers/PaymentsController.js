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
			amount:1500000000
		}
		return res.view('dashboards/pay',{dataPay:dataPay,layout:'layout-dashboards'});
	},

	hasPaid:(req,res)=>{
		return res.json(req.allParams());
	}

};

