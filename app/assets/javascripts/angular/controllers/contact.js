var ContactModalCtrl = angular.module('jgpApp')
  .controller('ContactModalCtrl', ['$scope', '$modal', function ($scope, $modal) {

  $scope.items = ['item1', 'item2', 'item3'];

  $scope.open = function () {

    var modalInstance = $modal.open({
      templateUrl: 'templates/contactModal.html',
      controller: ['$scope', '$modalInstance', function($scope, $modalInstance) {

        $scope.send = function () {
          $modalInstance.close('$scope.selected.item');
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
