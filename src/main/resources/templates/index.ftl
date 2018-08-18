<!DOCTYPE html>
<html lang="en" ng-app="piccaApp">
    <head>
        <title>${title}</title>

        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link href="css/app.css" rel="stylesheet"/>
        <script>
            function showReport() {
                window.location.replace("https://localhost:8080/piccashop/report");
            }
            function showAttachment() {
                window.location.replace("https://localhost:8080/piccashop/attachment");
            }
            function showDocxAttachment() {
                window.location.replace("https://localhost:8080/piccashop/docxattachment");
            }
            function showXlsxAttachment() {
                window.location.replace("https://localhost:8080/piccashop/xlsxattachment");
            }
        </script>

        <style type="text/css">
            table.ev-table { width:100%; }
            table tr th { padding:15px 40px; background: #808844; color: #111111;}
            table tr td { padding: 10px 100px; }
            [ev-sort] { cursor:pointer; }
            ul.ev-paging { display:table; margin:0 auto;}
            ul.ev-paging { overflow:hidden; }
            ul.ev-paging li { list-style-type: none; float:left; padding:15px; margin:2px color:#888; cursor:pointer;}
            ul.ev-paging li:hover { background:#888;}
            li.ev-current-page { background:#5279a4; color:#fff; }
        </style>
    </head>
    <body>

        <div ui-view></div>

        <script src="js/lib/jquery-2.2.1.min.js"></script>
        <script src="js/lib/angular.min.js" ></script>
        <script src="js/lib/angular-ui-router.min.js" ></script>
        <script src="js/lib/localforage.min.js" ></script>
        <script src="js/lib/ngStorage.min.js"></script>
        <script src="js/lib/bootstrap.min.js"></script>

        <script src="js/app/ev-table.directive.js"></script>
        <script src="js/app/app.js"></script>
        <script src="js/app/CreateOrderController.js"></script>
        <script src="js/app/CreateOrderService.js"></script>
        <script src="js/app/OrderController.js"></script>
        <script src="js/app/OrderService.js"></script>
        <script src="js/app/ProductsController.js"></script>
        <script src="js/app/ProductsService.js"></script>

        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700&subset=cyrillic" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=PT+Sans:regular,bold" rel="stylesheet" type="text/css" />

        <link href="css/menu/font-awesome.min.css" rel="stylesheet">
        <link href="css/menu/bootstrap.min.css" rel="stylesheet">
        <link href="css/menu/tooltipster.css" rel="stylesheet">
        <link href="css/menu/tooltipster-light.css" rel="stylesheet">
        <link href="css/menu/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="css/menu/owl-carousel-2/owl.carousel.css" rel="stylesheet">
        <link href="css/menu/royalslider.css" rel="stylesheet">
        <link href="css/menu/rs-default.css" rel="stylesheet">
        <link href="css/menu/magnific-popup.min.css" rel="stylesheet">
        <link href="css/menu/jquery-ui-1.10.3.custom.min.css" rel="stylesheet">
        <link href="css/menu/base.css" rel="stylesheet">
        <link href="css/menu/animate.css" rel="stylesheet">
        <link href="css/menu/theme.css" rel="stylesheet">
        <link href="css/menu/press-2-0.css" rel="stylesheet">
    </body>
</html>