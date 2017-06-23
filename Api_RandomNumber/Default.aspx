<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Api_RandomNumber.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href=" http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all " rel="stylesheet " type="text/css " />
    <%-- ---liblary-----%>
    <script src="node_modules/angular/angular.min.js"></script>
    <script src="/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="node_modules/angular-ui-router/release/angular-ui-router.min.js"></script>
    <script src="/node_modules/angular/angular-block-ui.min.js"></script>
    <script src="/node_modules/angular/angular-toastr.tpls.js"></script>
    <script src="/node_modules/angular-ui-bootstrap/dist/ui-bootstrap-tpls.js"></script>
    <script src="/node_modules/lodash/lodash.min.js"></script>
    <%--<script src="/node_modules/lodash/xml2json.js"></script>--%>
    <script src="node_modules/magic-suggest/magicsuggest-min.js"></script>
    <%--<script src="/node_modules/moment/moment.min.js"></script>--%>


    <script src="node_modules/textangular/dist/textAngular-rangy.min.js"></script>
    <script src='node_modules/textangular/dist/textAngular-sanitize.min.js'></script>
    <script src='node_modules/textangular/dist/textAngular.min.js'></script>
    <%-- ---liblary-----%>

    <!-- ---CONTROLLER----- -->
    <script src="app.js"></script>
    <script src="Erp_Resource/Entities/PlayerListController.js"></script>
    <!-- ---ENDCONTROLLER----- -->

    <link href="node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet " type="text/css " />
    <link rel='stylesheet' href="node_modules/font-awesome/css/font-awesome.min.css" />
    <link rel='stylesheet' href="node_modules/simple-line-icons/css/simple-line-icons.css" />
    <link rel='stylesheet' href="node_modules/textangular/dist/textAngular.css" />
    <link rel='stylesheet' href="Erp_Resource/Style/custom.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper" ng-app="randomNumberApp">
            <!-- NAVIGATION -->
            <div ng-include="'Erp_Resource/Static/Header/Header.html'"></div>
            <!-- NAVIGATION -->

            <!-- Sidebar -->
            <div ng-include="'Erp_Resource/Static/Sidebar/Sidebar.html'"></div>
            <!-- Sidebar -->
            <div id="page-content-wrapper">
                <div class="page-content">
                    <div class="container-fluid">
                        <div ui-view></div>
                    </div>
                </div>
            </div>
             <!-- FOOTER -->
            <div ng-include="'Erp_Resource/Static/Footer/Footer.html'"></div>
            <!-- FOOTER -->
        </div>
    </form>
</body>
<script>
    $(document).ready(function () {
        test();
    });
    function test() {
        $.ajax({
            type: "GET",
            contentType: "application/json; charset=utf-8",
            url: "Api_Resource/PlayerResource.asmx/getAll",
            dataType: "json",
            data: "{}",
            success: function (result) {
                console.log(result.d);
            },
            error: function (result) {
                console.log(result.message);
            }
        });
    }
</script>
</html>
