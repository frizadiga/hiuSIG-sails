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
  'GET /listing':'PropertiesController.listing',
  'GET /listing/detail/:id':'PropertiesController.listingDetail',
  'GET /findinmaps':'PropertiesController.listing',
  'GET /agents':'UsersController.agentListing',
  'GET /agent/detail/:id':'UsersController.agentDetail',
  'GET /partners':{view:'pages/partners'},
  
  //LOGIN/LOGOUT
  'GET /signup':{view:'pages/user-signup'},
  'GET /login':{view:'pages/user-login'},
  'GET /logout':'UsersController.logout',
  
  //ADMIN
  '/admin/report':'ReportsController.view',
  '/admin':'UsersController.checkLogin',
  '/admin/dashboard':{
    view:'admin/dashboard',
    locals:{layout:'layout-admin'}
  },
  '/admin/listings/manage':'PropertiesController.listingManage',
  '/admin/listing/insert':{
    view:'admin/listing-form',
    locals:{layout:'layout-admin',dataEdit:null}
  },
  '/admin/listing/edit/:id':'PropertiesController.listingEdit',
  '/admin/listing/maps':{
    view:'admin/listing-maps',
    locals:{layout:'layout-admin'}
  },
  '/admin/user/insert':{
    view:'admin/user-form',
    locals:{layout:'layout-admin',dataEdit:null}
  },
  '/admin/users/manage':'UsersController.userManage',
  '/admin/user/edit/:id':'UsersController.userEdit',
  '/admin/bookings':'BookingsController.bookingsList',
  //API
  '/api/url-slug':'PagesController.urlSlug',
  '/api/index':'PagesController.indexPage',
  'POST /api/userpost':'UsersController.response',
  '/api/getcoords':'PropertiesController.getCoords',
  '/api/mapspage':'MapsController.view',
  '/api/finduser':'UsersController.findUser',
  //API LISTING
  'POST /api/listing/insert':'PropertiesController.listingInsert',
  'POST /api/listing/edit/:no':'PropertiesController.listingEditPost',
  '/api/listing/delete/:id':'PropertiesController.listingDelete',
  //API USER
  '/api/user/insert':'UsersController.userInsert',
  '/api/user/delete/:id':'UsersController.UserDelete',
  '/api/user/edit/:no':'UsersController.userEditPost',
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
