<!DOCTYPE html>

<html lang="en" ng-app="piccaApp">
    <head>
        <title>${title}</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <link href="css/app.css" rel="stylesheet"/>
        <script>
            function showReport() {
                window.location.replace("http://localhost:8080/piccashop/report");
            }
            function showAttachment() {
                window.location.replace("http://localhost:8080/piccashop/attachment");
            }
            function showDocxAttachment() {
                window.location.replace("http://localhost:8080/piccashop/docxattachment");
            }
            function showXlsxAttachment() {
                window.location.replace("http://localhost:8080/piccashop/xlsxattachment");
            }
        </script>
    </head>
    <body>

        <div ui-view></div>
        <script src="js/lib/angular.min.js" ></script>
        <script src="js/lib/angular-ui-router.min.js" ></script>
        <script src="js/lib/localforage.min.js" ></script>
        <script src="js/lib/ngStorage.min.js"></script>
        <script src="js/app/app.js"></script>
        <script src="js/app/UserService.js"></script>
        <script src="js/app/UserController.js"></script>

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