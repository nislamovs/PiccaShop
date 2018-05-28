'use strict';

angular.module('piccaApp').controller('CreateOrderController',
    ['CreateOrderService', '$scope', '$rootScope', '$http', function( CreateOrderService, $scope, $rootScope, $http) {

        var self = this;
        self.piccaSize = 'small';
        self.user = {};
        self.user.name = "mslbgislgf";
        self.user.age = "234";
        self.user.salary = "675";
        self.users=[];
        self.products = {};

        self.file='';
        self.getAllProducts = getAllProducts;
        // self.createUser = createUser;
        // self.updateUser = updateUser;
        // self.removeUser = removeUser;
        // self.editUser = editUser;
        // self.reset = reset;
        // self.imgg = imgg;
        self.saveDoc = saveDoc;

        self.findDoc = findDoc;

        self.setSize = setSize;
        self.getSize = getSize;

        // self.upload = upload;
        // self.submit = submit;

        self.successMessage = '';
        self.errorMessage = '';
        self.done = false;

        self.onlyIntegers = /^\d+$/;
        self.onlyNumbers = /^\d+([,.]\d+)?$/;

        function getAllProducts() {
            return CreateOrderService.loadAllProducts();
        }

        function saveDoc(file) {
            return OrderService.saveDoc(file);
        }

        function findDoc(docId) {
            return OrderService.findDoc(docId);
        }

        function setSize(size) {
            self.piccaSize = size;
        }

        function getSize(size) {
            return (size === self.piccaSize)
        }
    }
]);