LoanItToMe.Views.CategoryIndex = Backbone.View.extend({

  template: JST['categories/index'],

  events: {
    //"click .content" : "redirectItemIndex"
  },

  redirectItemIndex: function(event) {
    //change to the itemIndexView and swap routers.. maybe?
    //console.log("you clicked" + event.target );
  },

  render: function(){
    var renderedContent = this.template({ categories: this.collection});
    this.$el.html(renderedContent);
    debugger
    return this;
  }

});