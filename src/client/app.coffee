'use strict'

angular.module 'cat-app', [
  'ndx'
  'ui.router'
]
.config ($locationProvider, $urlRouterProvider, AuthProvider) ->
  $urlRouterProvider.otherwise '/'
  $locationProvider.html5Mode true
  AuthProvider.config
    anonymousUser: true
try
  angular.module 'ndx'
catch e
  angular.module 'ndx', [] #ndx module stub