/**
 *
 */
var kujonControllers = angular.module('kujonControllers', []);

kujonControllers.controller('AddOrderController', ['$scope', 'UserService', function($scope, UserService) {

        $scope.message = UserService.query();

    }]);

kujonControllers.controller('UserListCtrl', ['$scope', '$location', 'UsersService', function($scope, $location, UsersService) {

        $scope.createUser = function(role) {
            $location.path('/users-creation/' + role);
        };

        $scope.createStudent = function() {
            $location.path('/students-creation');
        };

        $scope.editUser = function(id) {
            $location.path('/users-details/' + id);
        };

        $scope.editStudent = function(id) {
            $location.path('/students-details/' + id);
        };

        $scope.users = UsersService.query();
    }]);
kujonControllers.controller('UserCreationCtrl', ['$scope', '$routeParams', '$location', 'UsersService', function($scope, $routeParams, $location, UsersService) {

        $scope.user = {};
        $scope.user.role = $routeParams.role;

        $scope.createUser = function() {
            UsersService.create($scope.user);
            $location.path('/users');
        };

        $scope.close = function() {
            $location.path('/users');
        };

    }]);
kujonControllers.controller('UserDetailsCtrl', ['$scope', '$routeParams', '$location', 'UsersService', function($scope, $routeParams, $location, UsersService) {

        $scope.user = {};

        $scope.updateUser = function() {
            UsersService.update($scope.user);
            $location.path('/users');
        };

        $scope.close = function() {
            $location.path('/users');
        };

        $scope.user = UsersService.get({id: $routeParams.id});

    }]);

kujonControllers.controller('StudentCreationCtrl', ['$scope', '$routeParams', '$location', 'StudentsService', function($scope, $routeParams, $location, StudentsService) {

        $scope.user = {};
        $scope.user.role = 'STUDENT';

        $scope.createUser = function() {
            console.log($scope.user);
            StudentsService.create($scope.user);
            $location.path('/users');
        };

        $scope.close = function() {
            $location.path('/users');
        };

    }]);
kujonControllers.controller('StudentDetailsCtrl', ['$scope', '$routeParams', '$location', 'StudentsService', function($scope, $routeParams, $location, StudentsService) {

        $scope.user = {};

        $scope.updateUser = function() {
            StudentsService.update($scope.user);
            $location.path('/users');
        };

        $scope.close = function() {
            $location.path('/users');
        };

        $scope.user = StudentsService.get({id: $routeParams.id});

    }]);