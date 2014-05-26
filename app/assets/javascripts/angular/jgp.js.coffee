window.jgpApp = angular.module('jgpApp', 
  ['ngResource', 'ui.router', 'ngStorage', 'ui.bootstrap'])
  .config(['$stateProvider', '$locationProvider', '$urlRouterProvider',
    ($stateProvider, $locationProvider, $urlRouterProvider) ->
      $stateProvider
        # Static Pages
        .state('home',
          url: '/home'
          templateUrl: '/templates/home'
          controller: 'HomeCtrl'
        )
        .state('about',
          url: '/about'
          templateUrl: '/templates/about'
          controller: 'AboutCtrl'
        )
        .state('employees',
          url: '/employees'
          templateUrl: '/templates/employees'
          controller: 'EmployeesCtrl'
        )
        .state('services',
          url: '/services'
          templateUrl: '/templates/services'
          controller: 'ServicesCtrl'
        )
      $locationProvider.html5Mode(true)
      $urlRouterProvider.otherwise('/home')
  ])