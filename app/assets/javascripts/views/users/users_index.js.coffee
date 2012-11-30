class Webstore.Views.UsersIndex extends Backbone.View
  el: '#app'
  template: JST['users/index']
    
  initialize: ->
    @collection.bind 'reset', @render, @
   
  render: ->
    $(@el).html(@template())

    footerView = new Webstore.Views.Footer collection: @collection
    footerView.render()

    @collection.each (user) =>
      view = new Webstore.Views.UsersItem model: user
      @$('#users').append(view.render().el)

    @
  