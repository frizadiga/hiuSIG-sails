/**
 * ReportsController
 *
 * @description :: Server-side logic for managing reports
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	view:function(req,res){
		dataReports = [
		{
			judul:'Rumah 3 Lantai',
			penjual:'Tomomi',
			pembeli:'Rina'
		},
		{
			judul:'Rumah 3 Lantai',
			penjual:'Tomomi',
			pembeli:'Rina'
		},{
			judul:'Rumah 3 Lantai',
			penjual:'Tomomi',
			pembeli:'Rina'
		}
		]
		return res.view('admin/report',{data:dataReports, layout:'layout-admin'});
	}
};

