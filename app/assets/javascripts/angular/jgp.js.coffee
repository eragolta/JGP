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
          # controller: 'AboutCtrl'
        )
        .state('employees',
          url: '/employees'
          templateUrl: '/templates/employees'
          # controller: 'EmployeesCtrl'
        )
        .state('projects',
          abstract: true
          url: '/projects'
          templateUrl: '/templates/projects'
        )
        .state('projects.all',
          url: '/all'
          templateUrl: '/templates/projects.full'
          # controller: 'FullprojectsCtrl'
        )
        .state('projects.local',
          url: '/local'
          templateUrl: '/templates/projects.local'
          # controller: 'LocalprojectsCtrl'
        )
        .state('locations',
          url: '/locations'
          templateUrl: '/templates/locations'
          controller: 'LocationsCtrl'
        )
      $locationProvider.html5Mode(true)
      $urlRouterProvider.otherwise('/home')
  ])
