'use strict'

angular.module 'cat-app'
.controller 'CatsCtrl', ($scope) ->
  $scope.cats = $scope.list 'cats'