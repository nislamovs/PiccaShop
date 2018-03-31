'use strict';

angular.module('piccaApp').controller('OrderController',
    ['OrderService', '$scope', '$rootScope', '$http', function( OrderService, $scope, $rootScope, $http) {

        var self = this;
        self.user = {};
        self.user.name = "mslbgislgf";
        self.user.age = "234";
        self.user.salary = "675";
        self.users=[];
        self.prods = {};

        self.file='';
        self.getAllUsers = getAllUsers;
        self.createUser = createUser;
        self.updateUser = updateUser;
        self.removeUser = removeUser;
        self.editUser = editUser;
        self.reset = reset;
        self.imgg = imgg;
        self.saveDoc = saveDoc;

        self.findDoc = findDoc;
        self.upload = upload;
        self.submit = submit;

        self.successMessage = '';
        self.errorMessage = '';
        self.done = false;

        self.onlyIntegers = /^\d+$/;
        self.onlyNumbers = /^\d+([,.]\d+)?$/;

        function saveDoc(file) {
            return OrderService.saveDoc(file);
        }

        function findDoc(docId) {
            return OrderService.findDoc(docId);
        }
        //
        // function upload() {
        //     console.log("sdasdas");
        //     console.log($scope.file);
        //     console.log("sdasdas");
        //     self.file=$scope.file;
        // }

        function upload(){
            var file = $scope.file;
            OrderService.saveDoc(file)
                .then(
                    function (response) {
                        alert("file uploaded successfully.");
                        $http.get("http://localhost:8080/piccaapp/doc/upload").success(
                            function(response) {
                                $rootScope.docList = response;
                            });
                    },
                    function (errResponse) {

                    }
                );
        }

        function imgg() {
            return OrderService.imgg();
            // console.log('Getting Img');
            // return OrderService.getImg().then(
            //     function (response) {
            //         console.log("Ti loh!");
            //         self.prods = response.data;;
            //     },
            //     function (errResponse) {
            //         console.error('Error while retrieving image , Error :' + errResponse.data);
            //     }
            // );
        }

        function submit() {
            // console.log(self.user);
            // console.log($scope.myFile);
            upload();
            // console.log('Submitting');
            // if (self.user.id === undefined || self.user.id === null) {
            //     // console.log(self.user.name);
            //     var fd = new FormData();
            //     fd.append('file', $scope.file);
            //     fd.append('user', user);
            //
            //     console.log('Saving New User', self.user);
            //     createUser(fd);
            // } else {
            //     updateUser(self.user, self.user.id);
            //     console.log('User updated with id ', self.user.id);
            // }
        }

        function createUser(user) {
            console.log('About to create user');
            OrderService.createUser(user)
                .then(
                    function (response) {
                        console.log('User created successfully');
                        self.successMessage = 'User created successfully';
                        self.errorMessage='';
                        self.done = true;
                        self.user={};
                        $scope.myForm.$setPristine();
                    },
                    function (errResponse) {
                        console.error('Error while creating User');
                        self.errorMessage = 'Error while creating User: ' + errResponse.data.errorMessage;
                        self.successMessage='';
                    }
                );
        }


        function updateUser(user, id){
            console.log('About to update user');
            OrderService.updateUser(user, id)
                .then(
                    function (response){
                        console.log('User updated successfully');
                        self.successMessage='User updated successfully';
                        self.errorMessage='';
                        self.done = true;
                        $scope.myForm.$setPristine();
                    },
                    function(errResponse){
                        console.error('Error while updating User');
                        self.errorMessage='Error while updating User '+errResponse.data;
                        self.successMessage='';
                    }
                );
        }


        function removeUser(id){
            console.log('About to remove User with id '+id);
            OrderService.removeUser(id)
                .then(
                    function(){
                        console.log('User '+id + ' removed successfully');
                    },
                    function(errResponse){
                        console.error('Error while removing user '+id +', Error :'+errResponse.data);
                    }
                );
        }


        function getAllUsers(){
            return OrderService.getAllUsers();
        }

        function editUser(id) {
            self.successMessage='';
            self.errorMessage='';
            OrderService.getUser(id).then(
                function (user) {
                    self.user = user;
                },
                function (errResponse) {
                    console.error('Error while removing user ' + id + ', Error :' + errResponse.data);
                }
            );
        }
        function reset(){
            self.successMessage='';
            self.errorMessage='';
            self.user={};
            $scope.myForm.$setPristine(); //reset Form
        }



        $scope.save = function () {
            $http({
                method: 'POST',
                url: "http://localhost:8080/piccashop/doc/upload",
                headers: { 'Content-Type': undefined },

                transformRequest: function (data) {
                    var formData = new FormData();
                    formData.append("Product",  JSON.stringify({ProductID: '0001', ProductName: 'Samsung'}));
                    formData.append("model", angular.toJson(data.model));
                    for (var i = 0; i < data.files.length; i++) {
                        formData.append("file" + i, data.files[i]);
                    }
                    return formData;
                },
                data: { model: $scope.jsonData, files: $scope.files }
            }).
            success(function (data, status, headers, config) {
                alert("success!");
            }).
            error(function (data, status, headers, config) {
                alert("failed!");
            });
        };


    }


    ]);