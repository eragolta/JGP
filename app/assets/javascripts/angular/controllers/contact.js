var ContactModalCtrl = angular.module('jgpApp')
  .controller('ContactModalCtrl', ['$scope', '$modal', function ($scope, $modal) {

  $scope.open = function () {

    var modalInstance = $modal.open({
      templateUrl: 'templates/contactModal.html',
      controller: ['$scope', '$modalInstance', function($scope, $modalInstance) {

        $scope.contact = {
          email: '',
          message: '',
          currentDate: null
        };
        $scope.send = function () {
          $scope.contact.currentDate = new Date();
          $modalInstance.close($scope.contact);
        };

        $scope.cancel = function () {
          $modalInstance.dismiss('cancel');
        };
      }],
      controllerAs: 'contactCtrl'
    });

    modalInstance.result.then(function (result) {
      console.log(result);
    }, function () {
      console.log('Modal dismissed at: ' + new Date());
    });
  };

}]);
