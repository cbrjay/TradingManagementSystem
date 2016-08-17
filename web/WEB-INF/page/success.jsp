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

    <title>添加厂家</title>

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

        <div class="col-sm-6 col-md-offset-2 main">
            <h1>
                操作成功！
            </h1>

        </div>


    </div>
</div>

<script src="/static/scripts/jquery.min.js"></script>
<script src="/static/scripts/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/static/scripts/ie10-viewport-bug-workaround.js"></script>

<script>
    $(function () {
        setInterval(back, 500)
    })

    function back() {
        window.location.href = "list";
    }

</script>

</body>
</html>
