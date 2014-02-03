kujon.config(['$routeProvider',
    function ($routeProvider) {
        $routeProvider.
            when('/users', {
                templateUrl: 'users/users-list.jsp',
                controller: 'UserListCtrl'
            }).when('/users-creation/:role', {
                templateUrl: 'users/users-create.jsp',
                controller: 'UserCreationCtrl'
            }).when('/users-details/:id', {
                templateUrl: 'users/users-details.jsp',
                controller: 'UserDetailsCtrl'
            }).when('/students-creation', {
                templateUrl: 'users/students-create.jsp',
                controller: 'StudentCreationCtrl'
            }).when('/students-details/:id', {
                templateUrl: 'users/students-details.jsp',
                controller: 'StudentDetailsCtrl'
            }).when('/', {
                templateUrl: 'main.jsp',
                controller: 'AddOrderController'
            }).when('/groups', {
                templateUrl: 'groups/groups.jsp',
                controller: 'GroupCtrl'
            }).when('/group-students/:id', {
                templateUrl: 'groups/group-students.jsp',
                controller: 'GroupStudentsCtrl'
            }).when('/courses', {
                templateUrl: 'courses/courses.jsp',
                controller: 'CourseCtrl'
            }).when('/course-lecturers/:id', {
                templateUrl: 'courses/course-lecturers.jsp',
                controller: 'CourseLecturersCtrl'
            }).when('/lections', {
                templateUrl: 'lections/lections.jsp',
                controller: 'LectionCtrl'
            }).when('/lection-presence', {
                templateUrl: 'lections/lection-presence.jsp',
                controller: 'LectionPesenceCtrl'
            }).when('/progress', {
                templateUrl: 'progress/progress-group.jsp',
                controller: 'ProgressCtrl'
            }).when('/progress/student', {
                templateUrl: 'progress/progress-student.jsp',
                controller: 'ProgressStudentCtrl'
            }).when('/user/profile', {
                templateUrl: 'main.jsp',
                controller: 'EditProfileCtrl'
            }).when('/user/password', {
                templateUrl: 'users/user-password.jsp',
                controller: 'ChangePasswordCtrl'
            }).otherwise({
                redirectTo: '/'
            });
    }]);