<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Starter Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <link href="/static/css/base-info.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="/static/scripts/ie-emulation-modes-warning.js"></script><![endif]-->
</head>
<body>
<nav class="navbar navbar-fixed-top">

    <div class="row">

        <div class="col-md-1">
            <img src="/static/img/logo.jpg" class="img-circle my-logo" width="140" height="80">
        </div>

        <div class="col-md-1">
            <div class="container my-head">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">安徽中运国际商贸有限公司 - 综合管理系统</a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">登录</a></li>
                    <li><a href="#">注册</a></li>
                </ul>
            </div>
            <div class="container">
                <div id="navbar" class="navbar-collapse collapse">

                    <ul class="nav navbar-nav">
                        <li><a href="#">主页</a></li>
                        <li><a href="#">设置</a></li>
                        <li><a href="#">关于</a></li>
                        <li><a href="#">帮助</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">更多 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">更多</li>
                                <li><a href="#">联系我们</a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </li>
                    </ul>

                </div>
            </div>
        </div>

    </div>


</nav>


<div class="container-fluid">
    <div class="row my-content">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li class="active"><a href="#">生产厂家 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">其他</a></li>
            </ul>
        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

            <button id="btnAdd" type="button" class="btn btn-warning">新增</button>
            <button id="btnUpdate" type="button" class="btn btn-warning">修改</button>
            <button id="btnRemove" type="button" class="btn btn-warning">删除</button>

            <h3 class="sub-header">生产厂家</h3>

            <form method="post" action="">

                <table class="table table-bordered table-hover">
                    <thead>
                    <tr class="bg-primary">
                        <th><input type="checkbox" name="checkAll"></th>
                        <th>编号</th>
                        <th>厂家</th>
                        <th>厂家名称</th>
                        <th>联系人</th>
                        <th>电话</th>
                        <th>手机</th>
                        <th>传真</th>
                        <th>备注</th>
                        <th>验证人</th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="factory" items="${factoryList}">
                        <tr>
                            <td><input type="checkbox" name="id" value="${factory.id}"></td>
                            <td id="factoryId">${factory.id}</td>
                            <td>${factory.factoryName}</td>
                            <td>${factory.fullName}</td>
                            <td>${factory.contractor}</td>
                            <td>${factory.phone}</td>
                            <td>${factory.mobile}</td>
                            <td>${factory.fax}</td>
                            <td>${factory.cNote}</td>
                            <td>${factory.inspector}</td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </form>

        </div>
    </div>
</div>

<script src="/static/scripts/jquery.min.js"></script>
<script src="/static/scripts/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/static/scripts/ie10-viewport-bug-workaround.js"></script>

<script>
    $(function () {
        function initTableCheckbox() {

            var $tbr = $('table tbody tr');

            var $checkAll = $('table thead tr').find('input');
            $checkAll.click(function (event) {
                /*将所有行的选中状态设成全选框的选中状态*/
                $tbr.find('input').prop('checked', $(this).prop('checked'));
                /*并调整所有选中行的CSS样式*/
                if ($(this).prop('checked')) {
                    $tbr.find('input').parent().parent().addClass('warning');
                } else {
                    $tbr.find('input').parent().parent().removeClass('warning');
                }
                /*阻止向上冒泡，以防再次触发点击操作*/
                event.stopPropagation();
            });
            /*点击每一行的选中复选框时*/
            $tbr.find('input').click(function (event) {
                /*调整选中行的CSS样式*/
                $(this).parent().parent().toggleClass('warning');
                /*如果已经被选中行的行数等于表格的数据行数，将全选框设为选中状态，否则设为未选中状态*/
                $checkAll.prop('checked', $tbr.find('input:checked').length == $tbr.length ? true : false);
                /*阻止向上冒泡，以防再次触发点击操作*/
                event.stopPropagation();
            });
            /*点击每一行时也触发该行的选中操作*/
//            $tbr.click(function(){
//                $(this).find('input').click();
//            });
        }

        initTableCheckbox();
    });


    function hasChecked() {
        var factoryIds = "";
        $("input:checked").each(function () {
            factoryIds += $(this).parent().parent().find("#factoryId").html() + ",";
        });
        return factoryIds.length > 0;
    }

    $("#btnAdd").bind("click", function () {
        var $form = $('form');
        $form.attr("action", "add");
        $form.submit();
    });

    $("#btnUpdate").bind("click", function () {
        var $form = $('form');
        if (hasChecked()) {
            $form.attr("action", "update");
            $form.submit();
        } else {
            alert("请选择要修改哪一条数据");
        }
        $(this).blur();

    });

    $("#btnRemove").bind("click", function () {
        if (hasChecked()) {
            if (confirm("确定删除吗？")) {
                $.ajax({
                    type: "post",
                    dataType: "html",
                    url: "remove",
                    data: {
                        factoryIdData: factoryIds
                    },
                    error: function () {
                        alert("删除失败");
                    },
                    success: function () {
                        alert("删除成功");
                    }
                });

                $("input:checked").parent().parent().remove();
            }
        } else {
            alert("请选择要删除哪一条数据");
        }
        $(this).blur();

    })


</script>

</body>
</html>
