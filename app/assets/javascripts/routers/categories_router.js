LoanItToMe.Routers.Category = Backbone.Router.extend({
  
  routes: {
    "" : "index"
  },

  initialize: function($rootEl, categories) {
    this.$rootEl = $rootEl;
    this.categories = categories;
  },

  index: function(){
    //There might be an error here because this.categories isn't a collection. It's merely a JSON object.
    var categoriesIndex = new LoanItToMe.Views.CategoryIndex({ collection: this.categories });
    this.$rootEl.html(categoriesIndex.render().$el);
  }

});
