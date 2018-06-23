'use strict'

angular.module 'cat-app'
.controller 'UsersCtrl', ($scope) ->
  $scope.users = $scope.list 'users'