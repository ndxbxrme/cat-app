'use strict'
 
angular.module 'cat-app'
.config ($stateProvider) ->
  $stateProvider.state 'cats',
    url: '/cats'
    templateUrl: 'routes/cats/cats.html'
    controller: 'CatsCtrl'
    data:
      title: 'cats'
      auth: ['anon']