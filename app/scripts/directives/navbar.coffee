'use strict'

angular.module('fredekApp.directives')
  .directive 'navbar', ($location, pages)->
    templateUrl: 'views/navbar.html'
    restrict: 'E'
    link: ($scope) ->
      $scope.pages = pages
      $scope.currentPath = $location.path()
      $scope.$on '$locationChangeSuccess', ->
        $scope.currentPath = $location.path()
      $scope.isActive = (path) -> path is $scope.currentPath
