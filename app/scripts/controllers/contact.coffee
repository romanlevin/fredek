'use strict'

angular.module('fredekApp.controllers')
  .controller 'ContactCtrl', ($scope, $http) ->
    $http.get('/api/awesomeThings').success (awesomeThings) ->
      $scope.awesomeThings = awesomeThings
