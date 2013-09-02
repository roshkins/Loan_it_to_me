window.LoanItToMe = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function($rootEl, categories) {
    var categories = new LoanItToMe.Collections.Categories(categories);
    debugger
    var indexView = new LoanItToMe.Views.CategoryIndex({ collection: categories });

  }
};

$(document).ready(function(){
  var categories = JSON.parse($('#categories-data').html());
  LoanItToMe.initialize($('.content'), categories);
});
