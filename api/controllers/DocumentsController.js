/**
 * DocumentsController
 *
 * @description :: Server-side logic for managing documents
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	spp:(req,res)=>{
		return res.view('admin/documents/surat-pemesanan-properti');
	}
};

