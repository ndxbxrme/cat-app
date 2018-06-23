'use strict'
 
angular.module 'cat-app'
.config ($stateProvider) ->
  $stateProvider.state 'users',
    url: '/users'
    templateUrl: 'routes/users/users.html'
    controller: 'UsersCtrl'
    data:
      title: 'users'
      auth: ['anon']