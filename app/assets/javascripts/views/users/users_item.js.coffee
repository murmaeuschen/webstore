class Webstore.Views.UsersItem extends Backbone.View
  tagName: "tr"
  template: JST['users/item']
  events:
    'click a.remove-user' : 'removeUser'
  initialize: ->
    @model.bind 'destroy', @remove, @   
  render: ->
    $(@el).html(@template(user: @model))
    @
  removeUser: ->
    @model.destroy()
