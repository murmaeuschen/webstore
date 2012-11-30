class Webstore.Views.UsersNew extends Backbone.View
 el: '#new-user'

 template: JST['users/new']

 events:
   "submit #new-user": "save"

 initialize: ->
   @render()

 render: ->
   @$el.html @template()

 save: (e) ->
   e.preventDefault()
   e.stopPropagation()
   username = $('#username').val()
   role = $('#role').val()
   model = new Webstore.Models.User({username: username, role: role})
   @collection.create model,
        success: (user) =>
       @model = user
       window.location.hash = "/#{@model.id}"
