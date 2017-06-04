/**
 * AdmindashboardController
 *
 * @description :: Server-side logic for managing admindashboards
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	
	index:(req,res)=>{
		res.json({message:'AdmindashboardController worked!...'});
	},

	dashboards:(req,res)=>{
		if (!req.session.user) return res.redirect('/login');
    const statistics = {
    	yourListings:6
    }
    return res.view('dashboards/dashboard',{dataStats:statistics,layout:'layout-dashboards'});
	}

};

