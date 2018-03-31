'use strict';

angular.module('piccaApp').factory('OrderService',
    ['$localStorage', '$http', '$q', 'urls',
        function ($localStorage, $http, $q, urls) {

            var factory = {
                loadAllUsers: loadAllUsers,
                imgg: imgg,
                getAllUsers: getAllUsers,
                getUser: getUser,
                createUser: createUser,
                updateUser: updateUser,
                removeUser: removeUser,
                getImg: getImg,
                saveDoc: saveDoc,
                findDoc: findDoc
                // upload: upload
            };

            return factory;

            function saveDoc(file) {
                var deferred = $q.defer();
                var formData = new FormData();
                formData.append('image', file);
                formData.append("Product",  JSON.stringify({id: '7', category: '777', name: 'product1', cost: '11.11'}));

                $http.post(urls.DOC_URL, formData,{
                    transformRequest : angular.identity,
                    headers : {
                        'Content-Type' : undefined
                    }})
                    .then(
                        function (response) {
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            alert(errResponse.data.errorMessage);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function findDoc(docId) {
                var deferred = $q.defer();
                $http.get(urls.DOC_URL + '/'+docId)
                    .then(
                        function (response) {
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            alert(errResponse.data.errorMessage);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function getImg() {
                console.log('Fetching img');
                var deferred = $q.defer();
                $http.get(urls.BASE+'/api/test/')
                    .then(
                        function (response) {
                            console.log('Fetched img');
                            $localStorage.prods = response;
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while loading img');
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function imgg() {
                return $localStorage.prods;
            }

            function loadAllUsers() {
                console.log('Fetching all users');
                var deferred = $q.defer();
                $http.get(urls.USER_SERVICE_API)
                    .then(
                        function (response) {
                            console.log('Fetched successfully all users');
                            $localStorage.users = response.data;
                            deferred.resolve(response);
                        },
                        function (errResponse) {
                            console.error('Error while loading users');
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function getAllUsers(){
                return $localStorage.users;
            }

            function getUser(id) {
                console.log('Fetching User with id :'+id);
                var deferred = $q.defer();
                $http.get(urls.USER_SERVICE_API + id)
                    .then(
                        function (response) {
                            console.log('Fetched successfully User with id :'+id);
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while loading user with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function createUser(user) {
                var fd = new FormData();
                fd.append('file', angular.toJSON($scope.file));
                fd.append('data', angular.toJSON(self.user));
                console.dir(fd);

                console.log('Creating User');
                var deferred = $q.defer();
                $http.post(urls.USER_SERVICE_API, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                    .then(
                        function (response) {
                            loadAllUsers();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                           console.error('Error while creating User : '+errResponse.data.errorMessage);
                           deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function updateUser(user, id) {
                console.log('Updating User with id '+id);
                var deferred = $q.defer();
                $http.put(urls.USER_SERVICE_API + id, user)
                    .then(
                        function (response) {
                            loadAllUsers();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while updating User with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function removeUser(id) {
                console.log('Removing User with id '+id);
                var deferred = $q.defer();
                $http.delete(urls.USER_SERVICE_API + id)
                    .then(
                        function (response) {
                            loadAllUsers();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while removing User with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }
            //
            // function saveDoc(file) {
            //     var deferred = $q.defer();
            //     var formData = new FormData();
            //     formData.append('file', file);
            //
            //     $http.post(urls.DOC_URL+'upload', formData,{
            //         transformRequest : angular.identity,
            //         headers : {
            //             'Content-Type' : undefined
            //         }})
            //         .then(
            //             function (response) {
            //                 deferred.resolve(response.data);
            //             },
            //             function (errResponse) {
            //                 alert(errResponse.data.errorMessage);
            //                 deferred.reject(errResponse);
            //             }
            //         );
            //     return deferred.promise;
            // }
            //
            // function findDoc(docId) {
            //     var deferred = $q.defer();
            //     $http.get(urls.DOC_URL + '/'+docId)
            //         .then(
            //             function (response) {
            //                 deferred.resolve(response.data);
            //             },
            //             function (errResponse) {
            //                 alert(errResponse.data.errorMessage);
            //                 deferred.reject(errResponse);
            //             }
            //         );
            //     return deferred.promise;
            // }
        }
    ]);