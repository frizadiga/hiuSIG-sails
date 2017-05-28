/**
 * DocumentsController
 *
 * @description :: Server-side logic for managing documents
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	spp:(req,res)=>{
		return res.view('dashboards/documents/surat-pemesanan-properti',{title:'Surat Pemesanan Properti',layout:'layout-dashboards'});
	},
	sppjb:(req,res)=>{
		return res.view('dashboards/documents/surat-perjanjian-perangkat-jual-beli',{title:'Surat Perjanjian Perangkat Jual Beli',layout:'layout-dashboards'});
	},
	spajb:(req,res)=>{
		return res.view('dashboards/documents/surat-pengajuan-ajb',{title:'Surat Pengajuan Akad Jual Beli',layout:'layout-dashboards'});
	}
};

