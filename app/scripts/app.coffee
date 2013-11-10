'use strict'

angular.module('fredekApp', [
  'ngCookies',
  'ngSanitize',
  'ngRoute'
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
