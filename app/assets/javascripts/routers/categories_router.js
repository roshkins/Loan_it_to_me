LoanItToMe.Routers.Category = Backbone.Router.extend({
  
  routes: {
    "" : "index"
  },

  initialize: function($rootEl, categories) {
    this.$rootEl = $rootEl;
    this.categories = categories;
  },

  index: function(){
    var categoriesIndex = new LoanItToMe.Views.CategoryIndex({ collection: this.categories });
    this.$rootEl.html(categoriesIndex.render().$el);
  }

});