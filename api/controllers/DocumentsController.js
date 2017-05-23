/**
 * DocumentsController
 *
 * @description :: Server-side logic for managing documents
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	spp:(req,res)=>{
		return res.view('admin/documents/surat-pemesanan-properti',{title:'Surat Pemesanan Properti',layout:'layout-admin'});
	},
	sppjb:(req,res)=>{
		return res.view('admin/documents/surat-perjanjian-perangkat-jual-beli',{title:'Surat Perjanjian Perangkat Jual Beli',layout:'layout-admin'});
	}
};

