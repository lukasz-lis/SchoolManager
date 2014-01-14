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