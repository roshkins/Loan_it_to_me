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
  LoanItToMe.initialize( $('.content'), categories );
});
