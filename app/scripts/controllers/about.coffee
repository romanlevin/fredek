'use strict'

angular.module('fredekApp.controllers')
  .controller 'AboutCtrl', ($scope, $http) ->
    $http.get('/api/awesomeThings').success (awesomeThings) ->
      $scope.awesomeThings = awesomeThings
