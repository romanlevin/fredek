'use strict'

angular.module('fredekApp.controllers')
  .controller 'IndexCtrl', ($scope, $http) ->
    $http.get('/api/awesomeThings').success (awesomeThings) ->
      $scope.awesomeThings = awesomeThings
