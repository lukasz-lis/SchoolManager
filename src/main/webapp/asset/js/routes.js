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
                controller: 'StudentCreationCtrl'
            }).
            when('/students-details/:id', {
                templateUrl: 'users/students-details.jsp',
                controller: 'StudentDetailsCtrl'
            }).
            when('/', {
                templateUrl: 'main.jsp',
                controller: 'AddOrderController'
            }).
            when('/groups', {
                templateUrl: 'groups/groups.jsp',
                controller: 'GroupCtrl'
            }).
            when('/courses', {
                templateUrl: 'courses/courses.jsp',
                controller: 'CourseCtrl'
            }).
            otherwise({
                redirectTo: '/'
            });
    }]);