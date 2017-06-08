/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes map URLs to views and controllers.
 *
 * If Sails receives a URL that doesn't match any of the routes below,
 * it will check for matching files (images, scripts, stylesheets, etc.)
 * in your assets directory.  e.g. `http://localhost:1337/images/foo.jpg`
 * might match an image file: `/assets/images/foo.jpg`
 *
 * Finally, if those don't match either, the default 404 handler is triggered.
 * See `api/responses/notFound.js` to adjust your app's 404 logic.
 *
 * Note: Sails doesn't ACTUALLY serve stuff from `assets`-- the default Gruntfile in Sails copies
 * flat files from `assets` to `.tmp/public`.  This allows you to do things like compile LESS or
 * CoffeeScript for the front-end.
 *
 * For more information on configuring custom routes, check out:
 * http://sailsjs.org/#!/documentation/concepts/Routes/RouteTargetSyntax.html
 */

module.exports.routes = {

  /***************************************************************************
  *                                                                          *
  * Make the view located at `views/homepage.ejs` (or `views/homepage.jade`, *
  * etc. depending on your default view engine) your home page.              *
  *                                                                          *
  * (Alternatively, remove this and add an `index.html` file in your         *
  * `assets` directory)                                                      *
  *                                                                          *
  ***************************************************************************/

  // '/': {view: 'homepage'},
  /*'/':function(req,res){
    res.send('Server Running');
  },*/
  //TEST
  '/test/ejs':{view:'test/ejs',locals:{layout:false}},
  '/test/tomomi':{view:'test/tomomi',locals:{layout:'layout-plain'}},
  '/test/response':function(req,res){
    res.searchNotFound('Hasil Pencarian Tidak Ditemukan');
  },
  '/test/query':'QueryController.test',
  '/test/controller':'TestController.agentListing',
  'GET /crud/ui':'CrudController.view',
  'GET /users/ui':'UsersController.view',

  //PAGES
  '/':{view:'pages/index',locals:{layout:'layout-plain'}},
  'GET /new-property':'ListingsController.newListings',
  'GET /listings':'ListingsController.listingsList',
  'GET /listings/detail/:id':'ListingsController.listingDetail',
  'GET /findinmaps':'ListingsController.listingsList',
  'GET /agents':'UsersController.agentsList',
  'GET /agent/detail/:id':'UsersController.agentDetail',
  'GET /about-us':{view:'pages/about-us'},
  
  //LOGIN/LOGOUT
  'GET /signup':{view:'pages/user-signup'},
  'GET /login':{view:'pages/user-login'},
  'GET /logout':'UsersController.logout',
  
  //DASHBOARD
  '/dashboards':'DashboardsController.dashboards',

  '/dashboards/listings/insert':'ListingsController.listingForm',
  '/dashboards/listings/manage':'ListingsController.listingsManage',
  '/dashboards/listings/edit/:id':'ListingsController.listingEdit',
  '/dashboards/listings/maps':{
    view:'dashboards/listing-maps',
    locals:{layout:'layout-dashboards'}
  },
  '/dashboards/user/insert':'UsersController.userForm',
  '/dashboards/users/manage':'UsersController.usersManage',
  '/dashboards/user/edit/:id':'UsersController.userEdit',
  
  '/dashboards/messages':'MessagesController.messagesList',
  
  '/dashboards/bookings':'BookingsController.bookingsList',
  '/dashboards/bookings-confirm':'BookingsController.bookingsConfirm',
  
  '/dashboards/payments':'PaymentsController.paymentsList',
  '/dashboards/payments-dp':'PaymentsController.paymentsDpList',
  '/dashboards/payments-repayment':'PaymentsController.paymentsRepaymentList',
  '/dashboards/payments-confirm':'PaymentsController.paymentsConfirm',
  '/dashboards/payments-dp-confirm':'PaymentsController.paymentsDpConfirm',
  '/dashboards/payments-repayment-confirm':'PaymentsController.paymentsRepaymentConfirm',
  '/dashboards/pay':'PaymentsController.pay',
  '/dashboards/has-paid':'PaymentsController.hasPaid',
  
  //DOCUMENTS AND REPORTS
  '/dashboards/documents/print-template':{
    view:'dashboards/documents/print-template',
    locals:{layout:'layout-dashboards'}
  },
  '/dashboards/reports':'ReportsController.view',
  
  '/dashboards/documents/surat-pemesanan-properti':'DocumentsController.spp',
  '/dashboards/documents/surat-perjanjian-perangkat-jual-beli':'DocumentsController.sppjb',
  '/dashboards/documents/surat-pengajuan-ajb':'DocumentsController.spajb',
  
  '/dashboards/reports/report-transaction':'ReportsController.reportTransaction',

  //API
  '/api/url-slug':'PagesController.urlSlug',
  '/api/index':'PagesController.indexPage',
  'POST /api/userpost':'UsersController.response',
  '/api/getcoords':'ListingsController.getCoords',
  '/api/mapspage':'MapsController.view',
  '/api/finduser':'UsersController.findUser',
  
  //API LISTING
  'POST /api/listings/insert':'ListingsController.listingInsert',
  'POST /api/listings/edit/:no':'ListingsController.listingEditPost',
  '/api/listings/delete/:id':'ListingsController.listingDelete',
  
  //API USER
  '/api/user/insert':'UsersController.userInsert',
  '/api/user/delete/:id':'UsersController.UserDelete',
  '/api/user/edit/:no':'UsersController.userEditPost',
  
  //API MESSAGE
  'POST /api/message':'MessagesController.messageCreate',
  'DELETE /api/message/:id':'MessagesController.messageDelete',
  
  //API BOOKINGS
  'POST /api/booking':'BookingsController.bookingCreate',
  'DELETE /api/booking/:id':'BookingsController.bookingDenied',
  'PUT /api/booking/:id':'BookingsController.bookingApproved',
  'POST /api/payment':'PaymentsController.paymentCreate',
  
  
  //-------------------------------------------------------------------------
  '/hiuwave':function(req,res){
    res.redirect('http://hiuwave.com');
  }
  /***************************************************************************
  *                                                                          *
  * Custom routes here...                                                    *
  *                                                                          *
  * If a request to a URL doesn't match any of the custom routes above, it   *
  * is matched against Sails route blueprints. See `config/blueprints.js`    *
  * for configuration options and examples.                                  *
  *                                                                          *
  ***************************************************************************/

};
