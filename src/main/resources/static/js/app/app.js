var app = angular.module('piccaApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/piccashop',
    USER_SERVICE_API : 'http://localhost:8080/piccashop/api/user/',
    DOC_URL: 'http://localhost:8080/piccashop/doc/upload'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/createOrder'

            })
            .state('products', {
                url: '/products',
                templateUrl: 'partials/products',
                controller:'ProductsController',
                controllerAs:'ctrl',
                resolve: {
                    products: function ($q, ProductsService) {
                        console.log('Load all products');
                        var deferred = $q.defer();
                        ProductsService.getImg().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            })
            .state('orders', {
                url: '/orders',
                templateUrl: 'partials/orders',
                controller:'OrderController',
                controllerAs:'ctrl',
                resolve: {
                    users: function ($q, OrderService) {
                        console.log('Load all users');
                        var deferred = $q.defer();
                        OrderService.loadAllUsers().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                    }
                });
        $urlRouterProvider.otherwise('/');
    }
]);

app.directive('fileModel', [ '$parse', function($parse) {
    return {
        restrict : 'A',
        link : function(scope, element, attrs) {
            var model = $parse(attrs.fileModel);
            var modelSetter = model.assign;
            var reader = new FileReader();

            reader.onload = function (e) {
                angular.element('#img').attr('src', e.target.result);
                scope.$apply();
            };

            element.bind('change', function() {
                reader.readAsDataURL(element[0].files[0]);
                scope.$apply(function() {
                    modelSetter(scope, element[0].files[0]);
                });
            });

        }
    };
} ]);

app.run(function($rootScope, $http) {
    $http.get("http://localhost:8080/piccashop/").success(
        function(response) {
            $rootScope.docList = response;
        });
});