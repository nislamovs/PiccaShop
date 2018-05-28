'use strict';

angular.module('piccaApp').factory('CreateOrderService',
    ['$localStorage', '$http', '$q', 'urls',
        function ($localStorage, $http, $q, urls) {

            var factory = {
                loadAllProducts: loadAllProducts,
                // imgg: imgg,
                // getAllUsers: getAllUsers,
                // getUser: getUser,
                // createUser: createUser,
                // updateUser: updateUser,
                // removeUser: removeUser,
                // getImg: getImg,
                saveDoc: saveDoc,
                // findDoc: findDoc
                // upload: upload
            };

            return factory;

            function loadAllProducts() {

                //DUMMY zagotovka

                // var deferred = $q.defer();
                // var formData = new FormData();
                // formData.append('image', file);
                // formData.append("Product",  JSON.stringify({id: '7', category: '777', name: 'product1', cost: '11.11'}));
                //
                // $http.post(urls.DOC_URL, formData,{
                //     transformRequest : angular.identity,
                //     headers : {
                //         'Content-Type' : undefined
                //     }})
                //     .then(
                //         function (response) {
                //             deferred.resolve(response.data);
                //         },
                //         function (errResponse) {
                //             alert(errResponse.data.errorMessage);
                //             deferred.reject(errResponse);
                //         }
                //     );
                // return deferred.promise;
            }

            function saveDoc(file) {
                // var deferred = $q.defer();
                // var formData = new FormData();
                // formData.append('image', file);
                // formData.append("Product",  JSON.stringify({id: '7', category: '777', name: 'product1', cost: '11.11'}));
                //
                // $http.post(urls.DOC_URL, formData,{
                //     transformRequest : angular.identity,
                //     headers : {
                //         'Content-Type' : undefined
                //     }})
                //     .then(
                //         function (response) {
                //             deferred.resolve(response.data);
                //         },
                //         function (errResponse) {
                //             alert(errResponse.data.errorMessage);
                //             deferred.reject(errResponse);
                //         }
                //     );
                // return deferred.promise;
            }
        }
    ]);