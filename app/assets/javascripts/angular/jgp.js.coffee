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
        .state('fullprojects',
          url: '/fullprojects'
          templateUrl: '/templates/fullprojects'
          # controller: 'FullprojectsCtrl'
        )
        .state('localprojects',
          url: '/localprojects'
          templateUrl: '/templates/localprojects'
          # controller: 'LocalprojectsCtrl'
        )
        .state('contact',
          url: '/contact'
          templateUrl: '/templates/contact'
          # controller: 'ContactCtrl'
        )
      $locationProvider.html5Mode(true)
      $urlRouterProvider.otherwise('/home')
  ])