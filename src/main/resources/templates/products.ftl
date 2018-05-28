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
                    <div class="dropdown show floatRight">
                        <a class="btn btn-secondary dropdown-toggle" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Jasper reports
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                            <a class="btn" onclick="showReport();">Report</a>
                            <a class="btn" onclick="showAttachment();">Pdf attachment</a>
                            <a class="btn" onclick="showDocxAttachment();">Docx attachment</a>
                            <a class="btn" onclick="showXlsxAttachment();">Xlsx attachment</a>
                        </div>
                    </div>
                </div>
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
                        <div class="col-sm-4">
                            <a data-toggle="modal" data-target="#imgModalWindow">
                                <img id="img" style="position:absolute; height: 100; width: 100;" height="242" width="242" class="img-circle img-responsive img-center" src="images/nophoto.png" alt="">
                            </a>
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
        <div class="panel-heading">
            <span class="lead">List of products </span><br>
        </div>
        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-hover" ev-table="ctrl.tableData">
                    <thead>
                    <tr>
                        <th width="10%"><input ng-model="search.id" type="text" id="searchId" placeholder="Id" ng-pattern="ctrl.onlyIntegers" /> </th>
                        <th width="15%"><input ng-model="search.name" type="text" id="searchName" placeholder="Name" /> </th>
                        <th width="0%"></th>
                        <th width="10%"> <input ng-model="search.cost" type="text" id="searchCost" placeholder="Cost" ng-pattern="ctrl.onlyIntegers" /> </th>
                    </tr>
                    <tr>
                        <th ev-sort="id" width="10%">ID</th>
                        <th ev-sort="name" width="15%">NAME</th>
                        <th width="0%">COST</th>
                        <th ev-sort="cost" width="10%">COST</th>
                        <th width="10%">IMAGE</th>
                        <th width="5%">TIME : {{ requestTime }} ms;</th>
                        <th width="5%">TOTAL : {{ productCount }}</th>
                        <th width="40%"></th>
                        <th width="5%" ></th>
                        <th width="5%" ></th>
                        <#--<th width="5%" ><select ng-model="ctrl.tableData.pageSize" ng-change="" ng-options="num as num for num in ctrl.tableData.pageSizeOptions"></select></th>-->
                    </tr>
                    </thead>
                    <tbody>
                    <#--<tr ng-repeat="p in ctrl.imgg() | filter:{id:search.id, name:search.name, cost:search.cost} :startsWith">-->
                    <#--<tr ng-repeat="p in ctrl.imgg() | filter:search:startsWith">-->
                    <tr ng-repeat="item in collection | filter:search:startsWith">
                        <td>{{item.id}}</td>
                        <td>{{item.name}}</td>
                        <td>{{item.cost}}</td>
                        <td>{{item.cost}}</td>
                        <td><img id="view{{$index}}" ng-click="zoom($index)" height="42" width="42" ng-src="data:image/jpg;base64, {{item.image}}"></td>
                        <td></td>
                        <td></td>
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

<div id="imgModalWindow" class="modal fade col-sm-12" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <img id="imgModal" ng-src="images/nophoto.png" height="100%" width="100%" class="img-responsive">
            </div>
        </div>
    </div>
</div>