/**
 * 
 */

var kujonServices = angular.module('kujonServices', ['ngResource']);

kujonServices.factory('UsersService', ['$resource', function($resource) {
        return $resource('api/users/:id', {}, {
            query: {method: 'GET', isArray: true},
            create: {method: 'POST'},
            update: {method: 'PUT'},
            get: {method: 'GET', isArray: false, params: {id: '@id'}}                           
        });
}]);
kujonServices.factory('StudentsService', ['$resource', function($resource) {
        return $resource('api/students/:id', {}, {
            query: {method: 'GET', isArray: true},
            create: {method: 'POST'},
            update: {method: 'PUT'},
            get: {method: 'GET', isArray: false, params: {id: '@id'}}                           
        });
}]);
kujonServices.factory('GroupsService', ['$resource', function($resource) {
    return $resource('api/groups/:id', {}, {
        query: {method: 'GET', isArray: true},
        create: {method: 'POST'},
        update: {method: 'PUT'},
        get: {method: 'GET', isArray: false, params: {id: '@id'}}
    });
}]);
kujonServices.factory('CoursesService', ['$resource', function($resource) {
    return $resource('api/courses/:id', {}, {
        query: {method: 'GET', isArray: true},
        create: {method: 'POST'},
        update: {method: 'PUT'},
        get: {method: 'GET', isArray: false, params: {id: '@id'}}
    });
}]);
kujonServices.factory('LecturersService', ['$resource', function($resource) {
    return $resource('api/users/lecturers', {}, {
        query: {method: 'GET', isArray: true}
    });
}]);
kujonServices.factory('LectionsService', ['$resource', function($resource) {
        return $resource('api/lections/:id', {}, {
            query: {method: 'GET', isArray: true},
            create: {method: 'POST', isArray: false},
            update: {method: 'PUT'},
            get: {method: 'GET', isArray: false, params: {id: '@id'}}
        });
}]);
kujonServices.factory('PresencesStudentService', ['$resource', function($resource) {
    return $resource('api/presences/student/:username', {}, {
        get: {method: 'GET', isArray: true, params: {username: '@username'}}
    });
}]);
kujonServices.factory('PresencesService', ['$resource', function($resource) {
    return $resource('api/presences/:id', {}, {
        query: {method: 'GET', isArray: true},
        create: {method: 'POST'},
        update: {method: 'PUT'},
        get: {method: 'GET', isArray: false, params: {id: '@id'}}
    });
}]);
kujonServices.factory('ProgressService', ['$resource', function($resource) {
    return $resource('api/progress/:student', {}, {
        query: {method: 'GET', isArray: true},
        create: {method: 'POST'},
        update: {method: 'PUT'},
        get: {method: 'GET', isArray: true, params: {student: '@student'}}
    });
}]);
kujonServices.factory('SecurityService', ['$resource', function($resource) {
    return $resource('api/security', {}, {
        get: {method: 'GET', isArray: false}
    });
}]);

kujonServices.factory('PasswordService', ['$resource', function($resource) {
    return $resource('api/password', {}, {
        change: {method: 'POST'}
    });
}]);