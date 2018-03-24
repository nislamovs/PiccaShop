var app = angular.module('piccaApp',['ui.router','ngStorage']);

app.constant('urls', {
    BASE: 'http://localhost:8080/piccashop',
    USER_SERVICE_API : 'http://localhost:8080/piccashop/api/user/'
});

app.config(['$stateProvider', '$urlRouterProvider',
    function($stateProvider, $urlRouterProvider) {

        $stateProvider
            .state('home', {
                url: '/',
                templateUrl: 'partials/createOrder'

            })
            .state('orders', {
                url: '/orders',
                templateUrl: 'partials/orderList',
                controller:'UserController',
                controllerAs:'ctrl',
                resolve: {
                    users: function ($q, UserService) {
                        console.log('Load all users');
                        var deferred = $q.defer();
                        UserService.loadAllUsers().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    },
                    prods: function ($q, UserService) {
                        console.log('Load all prods');
                        var deferred = $q.defer();
                        UserService.getImg().then(deferred.resolve, deferred.resolve);
                        return deferred.promise;
                    }
                }
            });
        $urlRouterProvider.otherwise('/');
    }
]);

