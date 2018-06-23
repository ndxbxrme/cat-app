'use strict'

angular.module 'cat-app'
.config ($stateProvider) ->
  $stateProvider.state 'user',
    url: '/user/:_id'
    templateUrl: 'routes/user/user.html'
    controller: 'UserCtrl'
    data:
      title: 'user'
      auth: ['anon']