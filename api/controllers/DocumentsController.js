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
	},
	kuitansi:(req,res)=>{
		params = req.allParams();
		if(!params.id){
			delete params.id;
			return res.view('dashboards/documents/kuitansi',{dataKuitansi:null,title:'Kuitansi',layout:'layout-dashboards'});
		}else{
			Payments.findOne({id:params.id}).populate('listing').populate('customer').populate('agent').exec((err,data)=>{
				// if(data.id){data.id=data.id.replace('pyt','kwt-') || '-'}
				if(params.paymentType === 'DP'){
					data.uangSejumlah = data.dp;
					return res.view('dashboards/documents/kuitansi',{dataKuitansi:data,title:'Kuitansi',layout:'layout-dashboards'});
				}
				if(params.paymentType === 'Pelunasan'){
					data.uangSejumlah = data.remainingPayment;
					return res.view('dashboards/documents/kuitansi',{dataKuitansi:data,title:'Kuitansi',layout:'layout-dashboards'});
				}
			});
		}
	}
};

