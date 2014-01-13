/**
 *
 */

kujon.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/users', {
                templateUrl: 'users/users-list.jsp',
                controller: 'UserListCtrl'
            }).
            when('/users-creation/:role', {
                templateUrl: 'users/users-create.jsp',
                controller: 'UserCreationCtrl'
            }).
            when('/users-details/:id', {
                templateUrl: 'users/users-details.jsp',
                controller: 'UserDetailsCtrl'
            }).
            when('/students-creation', {
                templateUrl: 'users/students-create.jsp',
                controller: 'StudentsCreationCtrl'
            }).
            when('/students-details', {
                templateUrl: 'users/students-details.jsp',
                controller: 'StudentsDetailsCtrl'
            }).
            when('/', {
                templateUrl: 'main.jsp',
                controller: 'AddOrderController'
            }).
            otherwise({
                redirectTo: '/'
            });
    }]);