'use strict'

angular.module('fredekApp.services', [])
angular.module('fredekApp.directives', [])
angular.module('fredekApp.controllers', [])

angular.module('fredekApp', [
  'ngCookies'
  'ngSanitize'
  'ngRoute'
  'fredekApp.services'
  'fredekApp.directives'
  'fredekApp.controllers'
])
  .config ($routeProvider, $locationProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'partials/main'
        controller: 'IndexCtrl'
      .when '/about',
        templateUrl: 'partials/about'
        controller: 'AboutCtrl'
      .when '/contact',
        templateUrl: 'partials/contact'
        controller: 'ContactCtrl'
      .otherwise
        redirectTo: '/'
    $locationProvider.html5Mode(true)
