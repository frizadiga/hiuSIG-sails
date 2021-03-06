/**
 * BookingsController
 *
 * @description :: Server-side logic for managing bookings
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:(req,res)=>{
		// return res.json({message:"200 ok"});
		return res.view('dashboards/bookings',{layout:'layout-dashboards'});
	},
	bookingsList:(req,res)=>{
		const customer = req.session.user;
		let opts = {};
		opts = {customer:customer.no};
		opts.sort = 'createdAt DESC';
		Bookings.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/bookings',{dataBookings:data,layout:'layout-dashboards'});
		});
	},
	bookingDetail:(req,res)=>{
		Bookings.findOne({id:req.param('id')}).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json({dataPayment:data});
		});
	},
	bookingsConfirm:(req,res)=>{
		const agent = req.session.user;
		let opts = {};
		opts = {agent:agent.no};
		opts.sort = 'createdAt DESC';
		Bookings.find(opts).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.view('dashboards/bookings-confirm',{dataBookings:data,layout:'layout-dashboards'});
		});
	},
	bookingCreate:(req,res)=>{
		var params = req.allParams();
		Bookings.createId((err,id)=>{
			params.id = id;
			Bookings.create(params).exec((err,data)=>{
				if(err)return res.negotiate(err);
				return res.json(data);
			});
		});
	},
	bookingDeclined:(req,res)=>{
		Bookings.update({id:req.param('id')},{status:'ditolak'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	},
	bookingApproved:(req,res)=>{
		Bookings.update({id:req.param('id')},{status:'diterima'}).exec((err,data)=>{
			if(err)return res.negotiate(err);
			return res.json(data.id);
		});
	}

};

