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
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'IndexCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .when '/contact',
        templateUrl: 'views/contact.html'
        controller: 'ContactCtrl'
      .otherwise
        redirectTo: '/'
