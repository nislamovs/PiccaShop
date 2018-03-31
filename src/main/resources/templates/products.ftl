<div class="navigation">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="row">
                <div class="collapse navbar-collapse" id="main-nav">
                    <ul class="nav navbar-nav">
                        <li><a href="/piccashop/#/">Create order</a></li>
                        <li><a href="/piccashop/#/orders">Orders</a></li>
                        <li class="active"><a href="/piccashop/#/products">Products</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="floatRight">
            <div>
                <button class="btn" value="Report" onclick="showReport();">Show report</button>
                <button class="btn" value="Pdf attachment" onclick="showAttachment();">Show pdf attachment</button>
                <button class="btn" value="Docx attachment" onclick="showDocxAttachment();">Show docx attachment</button>
                <button class="btn" value="Xlsx attachment" onclick="showXlsxAttachment();">Show xlsx attachment</button>
            </div>
        </div>
    </nav>
</div>
<div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">Add product </span></div>
        <div class="panel-body">
            <div class="formcontainer">
                <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
                <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
                <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                    <input type="hidden" ng-model="ctrl.product.id" />

                    <div class="row">
                        <div class="form-group col-md-7">
                            <label class="col-md-2 control-lable" for="category">Category</label>
                            <div class="col-md-10">
                                <select ng-model="ctrl.product.category" id="category" class="username form-control input-sm" required>
                                    <option value="" disabled selected>Enter product category</option>
                                    <option value="1">Sauces</option>
                                    <option value="2">Meat ingredients</option>
                                    <option value="3">Mushrooms</option>
                                    <option value="4">Fruits and vegetables</option>
                                    <option value="5">Seafood</option>
                                    <option value="6">Cheese</option>
                                </select>
                            </div>
                        </div>
                        <div>
                            <img ng-src="images/nophoto.png" id="img" style="position:absolute; height: 100; width: 100;" height="242" width="242" >
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-7">
                            <label class="col-md-2 control-lable" for="name">Name</label>
                            <div class="col-md-10">
                                <input type="text" ng-model="ctrl.product.name" id="name" class="username form-control input-sm" placeholder="Enter product name" required ng-minlength="3"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-7">
                            <label class="col-md-2 control-lable" for="cost">Cost</label>
                            <div class="col-md-10">
                                <input type="text" ng-model="ctrl.product.cost" id="cost" class="form-control input-sm" placeholder="Enter product cost" required ng-pattern="ctrl.onlyIntegers"/>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-7">
                            <label class="col-md-2 control-lable" for="file">Picture</label>
                            <div class="col-md-10">
                                <input id="file" type="file" class="custom-file-input" file-model="file" >
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="form-actions floatRight">
                            <input type="submit"  value="{{!ctrl.product.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                            <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm">Reset Form</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">List of products </span><br>
            <input ng-model="search.id" type="text" id="searchId" placeholder="Id" ng-pattern="ctrl.onlyIntegers"/>
            <input ng-model="search.name" type="text" id="searchName" placeholder="Name" />
            <input ng-model="search.cost" type="text" id="searchCost" placeholder="Cost" ng-pattern="ctrl.onlyIntegers"/>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th width="10%">ID</th>
                        <th width="10%">NAME</th>
                        <th width="10%">COST</th>
                        <th width="10%">IMAGE</th>
                        <th width="50%"></th>
                        <th width="5%"></th>
                        <th width="5%"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <#--<tr ng-repeat="p in ctrl.imgg() | filter:{id:search.id, name:search.name, cost:search.cost} :startsWith">-->
                    <tr ng-repeat="p in ctrl.imgg() | filter:search:startsWith">
                        <td>{{p.id}}</td>
                        <td>{{p.name}}</td>
                        <td>{{p.cost}}</td>
                        <td><img id="profileImage" height="42" width="42" ng-src="data:image/jpg;base64, {{p.image}}"></td>
                        <td></td>
                        <td><button  ng-click="ctrl.editProduct(u.id)" class="press-round press-red ">Edit</button></td>
                        <td><button  ng-click="ctrl.removeProduct(u.id)" class="press-round press-red ">Remove</button></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>