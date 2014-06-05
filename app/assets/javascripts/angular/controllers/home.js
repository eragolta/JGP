'use strict';

angular.module('jgpApp')
	.controller('HomeCtrl', ['$scope', function($scope) {
		 var slides = $scope.slides = [];
		 $scope.slides.push({
		 	active: false,
		 	image: '/assets/JGPSon.jpg',
		 	text: 'Test'
		 })

		 $scope.slides.push({
		 	active: false,
		 	image: '/assets/cat.jpg',
		 	text: 'Test'
		 })

		 $scope.slides.push({
		 	active: false,
		 	image: '/assets/cat.jpg',
		 	text: 'Test'
		 })

		 $scope.myInterval = 5000;

	}]);