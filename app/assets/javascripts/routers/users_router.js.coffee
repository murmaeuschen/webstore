class Webstore.Routers.Users extends Backbone.Router
  routes:
    '': 'index'    
    'users/new': 'newUser'

  index: ->
    users = new Webstore.Collections.Users
    new Webstore.Views.UsersIndex collection: users
    users.fetch()  

  newUser: ->
    @view = new Webstore.Views.UsersNew({collection: @users})
