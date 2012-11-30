window.Webstore =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Webstore.Routers.Users
    Backbone.history.start()

$(document).ready ->
  Webstore.init()
