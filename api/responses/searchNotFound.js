/** 
 * api/responses/myResponse.js
 *
 * This will be available in controllers as res.myResponse('foo');
 */

module.exports = function(message) {

  var req = this.req;
  var res = this.res;

  var viewFilePath = 'res-search-not-found';
  var statusCode = 200;

  var result = {
    status: statusCode
  };

  // Optional message
  if (message) {
    result.message = message;
  }

  // If the user-agent wants a JSON response, send json
  if (req.wantsJSON) {
    return res.json(result, result.status);
  }

  // Set status code and view locals
  res.status(result.status);
  for (var key in result) {
    res.locals[key] = result[key];
  }
  // And render view
  res.render(viewFilePath, result, function(err) {
    // If the view doesn't exist, or an error occured, send json
    if (err) {
      return res.json(result, result.status);
    }

    // Otherwise, serve the `views/mySpecialView.*` page
    res.view(viewFilePath,{data:result.message});
  });
}