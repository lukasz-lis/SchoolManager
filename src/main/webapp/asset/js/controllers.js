/**
 *
 */
var kujonControllers = angular.module('kujonControllers', []);

kujonControllers.controller('AddOrderController', ['$scope', 'UserService', function ($scope, UserService) {

    $scope.message = UserService.query();

}]);

kujonControllers.controller('UserListCtrl', ['$scope', '$location', 'UserService', function ($scope, $location, UserService) {

    $scope.users = UserService.query();

    $scope.createUser = function (role) {
        $location.path('/users-creation/'+role);
    };


}]);
kujonControllers.controller('UserCreationCtrl', ['$scope','$routeParams', '$location', 'UserService', function ($scope, $routeParams, $location, UserService) {

    $scope.user = {};
    $scope.user.role = $routeParams.role;

    $scope.createUser = function () {
        UserService.create($scope.user);

        $location.path('/users');
    }

}]);
kujonControllers.controller('UserDetailsCtrl', ['$scope', '$routeParams', '$location', 'UserService', function ($scope, $routeParams, $location, UserService) {

    $scope.updateUser = function () {

        UserService.update($scope.user);
    }

    $scope.user = UserService.show({id: $routeParams.id});

}]);