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
			pembeli:'Rina',
			harga:1500000000
		},
		{
			judul:'Ruko Strategis',
			penjual:'Frizadiga',
			pembeli:'Tomomi',
			harga:1000000000
		},{
			judul:'Tanah Tepi Pantai',
			penjual:'Mami',
			pembeli:'Haruna',
			harga:800000000
		}
		];
		return res.view('dashboards/documents/reports',{data:dataReports, layout:'layout-dashboards'});
	}
};

