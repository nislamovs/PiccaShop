<div class="col-lg-6 col-lg-offset-1 col-md-6 col-sm-12 col-xs-12 texs columns">
    <!-- Default panel contents -->
    <div class="row-right">
        <div class="basis">
            <span class="lead">Enter client data </span>
        </div>
    </div>

    <div class="panel-body">
        <div class="formcontainer">
            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                <input type="hidden" ng-model="ctrl.product.id" />

                <div>
                    <div class="form-group col-md-12">
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
                </div>

                <div>
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="name">Name</label>
                        <div class="col-md-10">
                            <input type="text" ng-model="ctrl.product.name" id="name" class="username form-control input-sm" placeholder="Enter product name" required ng-minlength="3"/>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="cost">Cost</label>
                        <div class="col-md-10">
                            <input type="text" ng-model="ctrl.product.cost" id="cost" class="form-control input-sm" placeholder="Enter product cost" required ng-pattern="ctrl.onlyIntegers"/>
                        </div>
                    </div>
                </div>

                <div>
                    <div class="form-group col-md-12">
                        <label class="col-md-2 control-lable" for="file">Picture</label>
                        <div class="col-md-10">
                            <input id="file" type="file" class="custom-file-input" file-model="file" >
                        </div>
                    </div>
                </div>

                <div>
                    <div class="form-actions floatRight">
                        <input type="submit"  value="{{!ctrl.product.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid || myForm.$pristine">
                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm">Reset Form</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>