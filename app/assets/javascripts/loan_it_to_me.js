window.LoanItToMe = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function( $rootEl, catdata ) {
    var categories = new LoanItToMe.Collections.Categories( catdata );
    var categoryRouter = new LoanItToMe.Routers.Category( $rootEl, categories );
    Backbone.history.start();
  }
};

$(document).ready(function() {
  var categories = JSON.parse( $('#categories-data').html() );
  // REV: Perhaps make the collection here so that you're not making it every access of a route
  LoanItToMe.initialize( $('.content'), categories );
});
