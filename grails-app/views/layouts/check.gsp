
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>

    <meta charset="utf-8">
    <title>Bootstrap Theme by @Graphikaria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="">
    %{--<link rel="stylesheet" href="assets/css/bootstrap.min.css">--}%
    %{--<link rel="stylesheet" href="assets/css/theme.css">--}%
    %{--<link rel="stylesheet" href="assets/css/font-awesome.min.css">--}%
    %{--<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">--}%

    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'font-awesome.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap-select.min.css')}" type="text/css">
    <!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-default navbar-static-top" role="navigation">
    <section class="wrapper-xs bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-10">
                    <i class="fa fa-question-circle"></i> Have any question? Email us at <i class="fa fa-envelope"></i> <a href="#link"><span class="text-light">info@interstatelovesong.com</span></a>
                </div><!-- /.col -->
                <div class="col-sm-12 col-md-2">
                    <ul class="list-inline no-margin-bottom">
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-twitter"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-facebook"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="text-light fa fa-lg fa-fw fa-pinterest"></i></a></li>
                    </ul>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </section><!-- /.wrapper -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            %{--<a class="navbar-brand" href="index.html">--}%
                %{--<img src="assets/img/logo-dark.png" alt="Website Logo">--}%
            %{--</a>--}%
        </div>
        <!-- Navbar -->
        <div class="collapse navbar-collapse navbar-main-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                    <a href="${createLink(controller: "landing", action: "home")}">Home</a>
                </li>

                <li class="active">
                    <a href="${createLink(controller: "property", action: "allRentProperties", params: [propertyFor: project.propertyApp.enums.Enums.PropertyFor.RENT])}">Rent</a>
                </li>

                <li class="active">
                    <a href="${createLink(controller: "property", action: "allSaleProperties", params: [propertyFor: project.propertyApp.enums.Enums.PropertyFor.SALE])}">Sale</a>
                </li>

                <li class="active">
                    <a href="${createLink(controller: "property", action: "postProperty")}">Post Property</a>
                </li>

                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Real Estate <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="search_results.html">Search Results</a></li>
                        <li><a href="item_page.html">Item Page</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Agents <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="team.html">All Agents</a></li>
                        <li><a href="team_member.html">Agent Profile</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#link" class="dropdown-toggle" data-toggle="dropdown">Corporate <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="about.html">About</a></li>
                        <li><a href="contact.html">Contact 1</a></li>
                        <li><a href="contact_2.html">Contact 2</a></li>
                        <li><a href="login.html">Login/Signup</a></li>
                    </ul>
                </li>
            </ul><!-- /.navbar-nav -->
        <ul class="nav navbar-nav navbar-right main-nav">
            %{--<li><a href="${createLink(controller: "landing", action: "home")}" class="btn btn-info">Home</a></li>--}%
            %{--<li><a href="${createLink(controller: "property", action: "postProperty")}" class="btn btn-info">Post Property</a></li>--}%

            <sec:ifNotLoggedIn>
                <li><a href="${createLink(controller: "landing", action: "login")}" class="btn color-square">Login / SignUp</a></li>
            </sec:ifNotLoggedIn>
            <li>          <div class="dropdown">
                <button class="btn  dropdown-toggle" type="button" data-toggle="dropdown">
                    <sec:ifLoggedIn>
                        <img style="height:50px;width:60px;"src="${createLink(controller: "landing", action: "renderImage")}"/>

                        ${project.propertyApp.person.Person.get(sec.loggedInUserInfo(field: 'id')).name}<br>
                    %{--${project.propertyApp.person.Person.get(sec.loggedInUserInfo(field: 'id')).username}--}%

                    </sec:ifLoggedIn>

                    <span class="caret"></span>  </button>
                <ul class="dropdown-menu">
                    <li><a href="#">profile</a></li>
                    <li><a href="${createLink(controller:"logout")}">Logout</a></li>
                    <li><a href="#">Help</a></li>
                </ul>
            </div></li>
        </ul>

        </div><!-- /.collapse -->
    </div><!-- /.container -->
</nav>

<g:layoutBody/>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>



%{--<script src="assets/js/bootstrap.min.js"></script>--}%
%{--<script src="assets/js/bootstrap-select.min.js"></script>--}%

%{--<script src="assets/js/holder.js"></script>--}%


<script src="${resource(dir: 'js/theme', file: "bootstrap.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "bootstrap-select.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "jquery-1.8.3.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "holder.js")}"></script>

<script>window.jQuery || document.write('<script src="${resource(dir: 'js/theme', file: "jquery-1.8.3.min.js")}"><\/script>')</script>

<script>
    $(document).ready(function(){
        $('.selectpicker').selectpicker();
    });
</script>

<script   src="https://code.jquery.com/jquery-2.0.0.min.js"   integrity="sha256-1IKHGl6UjLSIT6CXLqmKgavKBXtr0/jJlaGMEkh+dhw="   crossorigin="anonymous"></script>

</body>
</html>