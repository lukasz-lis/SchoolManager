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
kujonControllers.controller('GroupCtrl', ['$scope', '$routeParams', '$location', 'GroupsService', function($scope, $routeParams, $location, GroupsService) {

        $scope.group = {};

        $scope.createGroup = function() {
            GroupsService.create($scope.group);
            $scope.groups = GroupsService.query();
            $scope.group = {};
            $('.modal').modal('hide');
        };

        $scope.updateGroup = function() {
            console.log($scope.group);
            GroupsService.update($scope.group);
            $scope.groups = GroupsService.query();
            $scope.group = {};
            $('.modal').modal('hide');
        };

        $scope.editGroup = function(groupID) {
            $scope.group = GroupsService.get({id: groupID});
        };

        $scope.close = function() {
            $scope.group = {};
        };

        $scope.showStudents = function(groupID) {
            $location.path('/group-students/' + groupID);
        };

        $scope.groups = GroupsService.query();

    }]);
kujonControllers.controller('CourseCtrl', ['$scope', '$routeParams', '$location', 'CoursesService', function($scope, $routeParams, $location, CoursesService) {

        $scope.course = {};

        $scope.createCourse = function() {
            CoursesService.create($scope.course);
            $scope.courses = CoursesService.query();
            $scope.course = {};
            $('.modal').modal('hide');
        };

        $scope.updateCourse = function() {
            console.log($scope.course);
            CoursesService.update($scope.course);
            $scope.courses = CoursesService.query();
            $scope.course = {};
            $('.modal').modal('hide');
        };

        $scope.editCourse = function(courseID) {
            $scope.course = CoursesService.get({id: courseID});
        };

        $scope.close = function() {
            $scope.course = {};
            console.log($scope.course);
        };

        $scope.showLecturers = function(courseID) {
            $location.path('/course-lecturers/' + courseID);
        };


        $scope.courses = CoursesService.query();

    }]);
kujonControllers.controller('GroupStudentsCtrl', ['$scope', '$routeParams', '$location', 'GroupsService', 'StudentsService', function($scope, $routeParams, $location, GroupsService, StudentsService) {

        $scope.group = GroupsService.get({id: $routeParams.id});

        $scope.showStudents = function() {
            $scope.students = StudentsService.query();
        }

        $scope.addStudent = function(index) {
            $scope.group.students.push($scope.students[index]);
            $scope.students.splice(index, 1);
        }

        $scope.deleteStudent = function(index) {
            $scope.group.students.splice(index, 1);
        }

        $scope.back = function() {
            $location.path('/groups/');
        }

        $scope.saveStudents = function() {
            GroupsService.update($scope.group);
            $location.path('/groups/');
        }


    }]);
kujonControllers.controller('CourseLecturersCtrl', ['$scope', '$routeParams', '$location', 'CoursesService', 'LecturersService', function($scope, $routeParams, $location, CoursesService, LecturersService) {

        $scope.course = CoursesService.get({id: $routeParams.id});

        $scope.showLecturers = function() {
            $scope.lecturers = LecturersService.query();
        }

        $scope.addLecture = function(index) {
            $scope.course.lecturers.push($scope.lecturers[index]);
            $scope.lecturers.splice(index, 1);
        }

        $scope.deleteLecture = function(index) {
            $scope.course.lecturers.splice(index, 1);
        }

        $scope.back = function() {
            $location.path('/courses/');
        }

        $scope.saveLecturers = function() {
            CoursesService.update($scope.course);
            $location.path('/courses/');
        }
    }]);
kujonControllers.controller('LectionCtrl', ['$scope', '$routeParams', '$location', 'LectionsService', function($scope, $routeParams, $location, LectionsService) {

        $scope.newLection = function() {
            $location.path('/lection-presence/');
        }

        $scope.lections = LectionsService.query();

    }]);
kujonControllers.controller('LectionPesenceCtrl', ['$scope', '$routeParams', '$location', 'LectionsService', 'CoursesService', 'GroupsService', 'PresencesService', function($scope, $routeParams, $location, LectionsService, CoursesService, GroupsService, PresencesService) {

        $scope.groups = GroupsService.query();
        $scope.courses = CoursesService.query();

        $scope.presences = [];

        $scope.$watch('lection.group', function(newVal, oldVal) {

            if (angular.isUndefined(newVal) || newVal == null)
                return;
            angular.forEach(newVal.students, function(student) {
                $scope.presences.push({student: student});
            });
            console.log($scope.presences);
        });


        $scope.seeWhatIsChoose = function() {
            console.log($scope.lection);
        };

        $scope.saveLection = function() {
            LectionsService.save($scope.lection, function(lection) {
                $scope.lection.lectionID = lection.lectionID;
                console.log($scope.lection);
                angular.forEach($scope.presences, function(presence) {
                    presence.lection = $scope.lection;
                    console.log(presence);
                    PresencesService.save(presence);
                });
                $scope.lections = LectionsService.query();
            });

            $location.path('/lections/');
        };

    }]);
kujonControllers.controller('ProgressCtrl', ['$scope', '$routeParams', '$location', 'StudentsService', 'CoursesService', 'GroupsService', 'ProgressService', function($scope, $routeParams, $location, StudentsService, CoursesService, GroupsService, ProgressService) {

        $scope.groups = GroupsService.query();
        $scope.courses = CoursesService.query();

        $scope.progress = {};
        $scope.group = {};
        $scope.prog = [];
        $scope.students = [];

        $scope.$watch('group', function(newVal, oldVal) {     
     
            angular.forEach($scope.group.students, function(student) {
              
                var stud = {student: student, progress: ProgressService.get({student: student.userID})};            
                $scope.students.push(stud);                
            });
          
        });

        $scope.addProgress = function(student) {
         
            $scope.progress.student = student;
            $scope.prog = ProgressService.get({student: student.userID});     
            
        };
        
        $scope.close = function() {           
            $scope.progress = {};
            $scope.prog = [];
        };

        $scope.saveProgress = function() {
            console.log($scope.progress);
            ProgressService.save($scope.progress);
            $('.modal').modal('hide');
        };

    }]);


