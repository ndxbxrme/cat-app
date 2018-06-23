'use strict'

angular.module 'cat-app'
.controller 'CatCtrl', ($scope, $stateParams) ->
  $scope.cat = $scope.single 'cats', $stateParams