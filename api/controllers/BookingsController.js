/**
 * BookingsController
 *
 * @description :: Server-side logic for managing bookings
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:(req,res)=>{
		// return res.json({message:"200 ok"});
		return res.view('admin/bookings',{layout:'layout-admin'});
	}
};

