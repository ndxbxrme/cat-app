'use strict'

angular.module 'cat-app'
.controller 'UserCtrl', ($scope, $stateParams) ->
  $scope.user = $scope.single 'users', $stateParams