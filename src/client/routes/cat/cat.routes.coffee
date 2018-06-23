'use strict'

angular.module 'cat-app'
.config ($stateProvider) ->
  $stateProvider.state 'cat',
    url: '/cat/:_id'
    templateUrl: 'routes/cat/cat.html'
    controller: 'CatCtrl'
    data:
      title: 'cat'
      auth: ['anon']