'use strict';

angular.module('piccaApp').factory('ProductsService',
    ['$localStorage', '$http', '$q', 'urls',
        function ($localStorage, $http, $q, urls) {

            var factory = {
                loadAllProducts: loadAllProducts,
                imgg: imgg,
                getAllProducts: getAllProducts,
                getProduct: getProduct,
                createProduct: createProduct,
                updateProduct: updateProduct,
                removeProduct: removeProduct,
                getImg: getImg,
                saveDoc: saveDoc,
                findDoc: findDoc,
                showImg: showImg
            };

            return factory;

            function imageIsLoaded(e) {
                angular.element('#img').attr('src', e.target.result);
            }

            function showImg() {
                console.log("asdad121132");

                    if (this.files && this.files[0]) {
                        var reader = new FileReader();
                        reader.onload = imageIsLoaded;
                        reader.readAsDataURL(this.files[0]);
                    }
            }

            function saveDoc(formData) {
                var deferred = $q.defer();
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
                            $localStorage.products = response.data;
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
                return $localStorage.products;
            }

            function loadAllProducts() {
                console.log('Fetching all products');
                var deferred = $q.defer();
                $http.get(urls.USER_SERVICE_API)
                    .then(
                        function (response) {
                            console.log('Fetched successfully all products');
                            $localStorage.products = response.data;
                            deferred.resolve(response);
                        },
                        function (errResponse) {
                            console.error('Error while loading products');
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function getAllProducts(){
                return $localStorage.products;
            }

            function getProduct(id) {
                console.log('Fetching Product with id :'+id);
                var deferred = $q.defer();
                $http.get(urls.USER_SERVICE_API + id)
                    .then(
                        function (response) {
                            console.log('Fetched successfully Product with id :'+id);
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while loading product with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function createProduct(product) {
                var fd = new FormData();
                fd.append('file', angular.toJSON($scope.file));
                fd.append('data', angular.toJSON(product));
                console.dir(fd);

                console.log('Creating Product');
                var deferred = $q.defer();
                $http.post(urls.USER_SERVICE_API, fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                })
                    .then(
                        function (response) {
                            loadAllProducts();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                           console.error('Error while creating Product : '+errResponse.data.errorMessage);
                           deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function updateProduct(product, id) {
                console.log('Updating Product with id '+id);
                var deferred = $q.defer();
                $http.put(urls.USER_SERVICE_API + id, product)
                    .then(
                        function (response) {
                            loadAllProducts();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while updating Product with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

            function removeProduct(id) {
                console.log('Removing Product with id '+id);
                var deferred = $q.defer();
                $http.delete(urls.USER_SERVICE_API + id)
                    .then(
                        function (response) {
                            loadAllProducts();
                            deferred.resolve(response.data);
                        },
                        function (errResponse) {
                            console.error('Error while removing Product with id :'+id);
                            deferred.reject(errResponse);
                        }
                    );
                return deferred.promise;
            }

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