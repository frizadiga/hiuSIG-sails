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
			judul:'Rumah 2 Lantai',
			penjual:'Tomomi',
			pembeli:'Rina'
		},
		{
			judul:'Ruko Strategis',
			penjual:'Frizadiga',
			pembeli:'Tomomi'
		},{
			judul:'Tanah Tepi Pantai',
			penjual:'Mami',
			pembeli:'Haruna'
		}
		];
		return res.view('dashboards/documents/reports',{data:dataReports, layout:'layout-dashboards'});
	}
};

