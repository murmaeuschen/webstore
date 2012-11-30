class Webstore.Views.Footer extends Backbone.View
  el: '#footer'
  template: JST['users/footer']
  initialize: ->
    @collection.bind 'add', @updateRemaining, @
    @collection.bind 'remove', @updateRemaining, @
  render: ->
    remaining = @collection.length
    $(@el).html(@.template({remaining: remaining}))
    @
  updateRemaining: ->
    @$('#user-count').text(@collection.length) 
