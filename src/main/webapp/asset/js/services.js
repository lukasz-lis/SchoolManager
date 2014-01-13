/**
 * 
 */

var kujonServices = angular.module('kujonServices', ['ngResource']);

kujonServices.factory('UserService', [ '$resource', function($resource) {
	return $resource('api/users', {}, {
		query : { method : 'GET', isArray : true },
        create: { method: 'POST' },
        update: { method: 'PUT' }
	});
} ]);