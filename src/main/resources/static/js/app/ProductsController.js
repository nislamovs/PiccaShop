'use strict';

angular.module('piccaApp').controller('ProductsController',
    ['ProductsService', '$scope', '$rootScope', '$http', function( ProductsService, $scope, $rootScope, $http) {

        $scope.startsWith = function (actual, expected) {
            var lowerStr = (actual + "").toLowerCase();
            return lowerStr.indexOf(expected.toLowerCase()) === 0;
        };

        $scope.zoom = function(index) {
            var elem = "view" + index;
            var imageId = document.getElementById(elem);
            if (imageId.style.width != "240px") {
                imageId.style.width = "240px";
                imageId.style.height = "240px";
            } else {
                imageId.style.width = "42px";
                imageId.style.height = "42px";
            }

        };
        //
        // $scope.clickedImage = '';
        //
        // $scope.openImage = function (image) {
        //     $scope.clickedImage = image;
        // };

        var self = this;
        self.product = {};
        self.products = [];

        self.file='';
        self.getAllProducts = getAllProducts;
        self.createProduct = createProduct;
        self.updateProduct = updateProduct;
        self.removeProduct = removeProduct;
        self.editProduct = editProduct;
        self.reset = reset;
        self.imgg = imgg;
        self.saveDoc = saveDoc;
        self.showImg = showImg;

        self.findDoc = findDoc;
        self.submit = submit;

        self.successMessage = '';
        self.errorMessage = '';
        self.done = false;

        self.onlyIntegers = /^\d+$/;
        self.onlyNumbers = /^\d+([,.]\d+)?$/;


        function showImg() {
            return ProductsService.showImg();
        }

        function saveDoc(file) {
            return ProductsService.saveDoc(file);
        }

        function findDoc(docId) {
            return ProductsService.findDoc(docId);
        }
        //
        // function upload() {
        //     console.log("sdasdas");
        //     console.log($scope.file);
        //     console.log("sdasdas");
        //     self.file=$scope.file;
        // }

        function imgg() {
            return ProductsService.imgg();
            // console.log('Getting Img');
            // return ProductsService.getImg().then(
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

            var formData = new FormData();
            var file = $scope.file;
            formData.append('image', file);
            formData.append("Product", JSON.stringify(self.product));
            ProductsService.saveDoc(formData)
                .then(
                    function (response) {
                        alert("file uploaded successfully.");
                        // $http.get("http://localhost:8080/piccashop/doc/upload").success(
                        //     function(response) {
                        //         $rootScope.docList = response;
                        //     });
                    },
                    function (errResponse) {
                        alert(errResponse);
                    }
                );


            // console.log(self.product);
            // console.log($scope.myFile);

            // console.log('Submitting');
            // if (self.product.id === undefined || self.product.id === null) {
            //     // console.log(self.product.name);
            //     var fd = new FormData();
            //     fd.append('file', $scope.file);
            //     fd.append('product', product);
            //
            //     console.log('Saving New Product', self.product);
            //     createProduct(fd);
            // } else {
            //     updateProduct(self.product, self.product.id);
            //     console.log('Product updated with id ', self.product.id);
            // }
        }

        function createProduct(product) {
            console.log('About to create product');
            ProductsService.createProduct(product)
                .then(
                    function (response) {
                        console.log('Product created successfully');
                        self.successMessage = 'Product created successfully';
                        self.errorMessage='';
                        self.done = true;
                        self.product={};
                        $scope.myForm.$setPristine();
                    },
                    function (errResponse) {
                        console.error('Error while creating Product');
                        self.errorMessage = 'Error while creating Product: ' + errResponse.data.errorMessage;
                        self.successMessage='';
                    }
                );
        }

        function updateProduct(product, id){
            console.log('About to update product');
            ProductsService.updateProduct(product, id)
                .then(
                    function (response){
                        console.log('Product updated successfully');
                        self.successMessage='Product updated successfully';
                        self.errorMessage='';
                        self.done = true;
                        $scope.myForm.$setPristine();
                    },
                    function(errResponse){
                        console.error('Error while updating Product');
                        self.errorMessage='Error while updating Product '+errResponse.data;
                        self.successMessage='';
                    }
                );
        }

        function removeProduct(id){
            console.log('About to remove Product with id '+id);
            ProductsService.removeProduct(id)
                .then(
                    function(){
                        console.log('Product '+id + ' removed successfully');
                    },
                    function(errResponse){
                        console.error('Error while removing product '+id +', Error :'+errResponse.data);
                    }
                );
        }

        function getAllProducts(){
            return ProductsService.getAllProducts();
        }

        function editProduct(id) {
            self.successMessage='';
            self.errorMessage='';
            ProductsService.getProduct(id).then(
                function (product) {
                    self.product = product;
                },
                function (errResponse) {
                    console.error('Error while removing product ' + id + ', Error :' + errResponse.data);
                }
            );
        }

        function reset(){
            self.successMessage='';
            self.errorMessage='';
            self.product={};
            angular.element('#img').attr('src', "images/nophoto.png");

            angular.forEach(
                angular.element("input[type='file']"),
                function(inputElem) {
                    angular.element(inputElem).val(null);
                });

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