<div class="navigation">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="row">
                <div class="collapse navbar-collapse" id="main-nav">
                    <ul class="nav navbar-nav">
                        <li><a href="/piccashop/#/">Create order</a></li>
                        <li class="active"><a href="/piccashop/#/orders">Orders</a></li>
                        <li><a href="/piccashop/#/products">Products</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
<div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.user.id" />
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="uname">Name</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.name" value="bdfghjfgh" id="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="age">Age</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.age" value="890" id="age" class="form-control input-sm" placeholder="Enter your Age." required ng-pattern="ctrl.onlyIntegers"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-2 control-lable" for="salary">Salary</label>
                            <div class="col-md-7">
                                <input type="text" ng-model="ctrl.user.salary" value="456" id="salary" class="form-control input-sm" placeholder="Enter your Salary." required ng-pattern="ctrl.onlyNumbers"/>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="col-md-6">
                            <div class="row">
                                <h2>Upload Document</h2>
                                <table class="table table-bordered">
                                    <tr>
                                        <td><input type="file" class="custom-file-input" file-model="file"></td>
                                    </tr>
                                    <tr>
                                        <td><button ng-click="upload()">Upload</button></td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                            <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of Users </span></div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>IMAGE</th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="u in ctrl.imgg()">
                        <td>{{u.id}}</td>
                        <td>{{u.name}}</td>
                        <td>{{u.cost}}</td>
                        <td><img id="profileImage" height="42" width="42" ng-src="data:image/jpg;base64, {{u.image}}"></td>
                        <td><button  ng-click="ctrl.editUser(u.id)" class="press-round press-red ">Edit</button></td>
                        <td><button  ng-click="ctrl.removeUser(u.id)" class="press-round press-red ">Remove</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th width="100"></th>
                        <th width="100"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="u in ctrl.getAllUsers()">
                        <td>{{u.id}}</td>
                        <td>{{u.name}}</td>
                        <td>{{u.age}}</td>
                        <td>{{u.salary}}</td>
                        <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
                        <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="floatRight">
    <div>
        <button class="btn btn-success" value="Report" onclick="showReport();">Show report</button>
        <button class="btn btn-success" value="Pdf attachment" onclick="showAttachment();">Show pdf attachment</button>
        <button class="btn btn-success" value="Docx attachment" onclick="showDocxAttachment();">Show docx attachment</button>
        <button class="btn btn-success" value="Xlsx attachment" onclick="showXlsxAttachment();">Show xlsx attachment</button>
    </div>
</div>