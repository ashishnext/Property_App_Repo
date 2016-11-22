
<%@ page import="project.propertyApp.enums.Enums; project.propertyApp.person.Person" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle /></title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'custom.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'normalize.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'animate.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'cardio.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'et-icons.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/theme', file: 'owl.css')}" type="text/css">

    <meta name="msapplication-TileColor" content="#00a8ff">
    <meta name="msapplication-config" content="img/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--}%
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <g:layoutHead/>
</head>
<body >

<nav class="navbar bg-primary">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            %{--<a class="navbar-brand" href="#"><img src="img/logo.png" data-active-url="img/logo-active.png" alt=""></a>--}%
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right main-nav">
                <li><a href="${createLink(controller: "landing", action: "home")}" class="btn btn-info">Home</a></li>
                <li><a href="${createLink(controller: "property", action: "postProperty")}" class="btn btn-info">Post Property</a></li>

                <sec:ifNotLoggedIn>
                <li><a href="${createLink(controller: "landing", action: "login")}" class="btn btn-info">Login / SignUp</a></li>
                </sec:ifNotLoggedIn>
                <li>          <div class="dropdown">
                    <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown">
                        <sec:ifLoggedIn>
                        <img style="height:50px;width:50px;"src="${createLink(controller: "landing", action: "renderImage")}"/>

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
        <ul class="nav navbar-nav navbar-left main-nav">
            <li><a href="${createLink(controller: "property", action: "allRentProperties", params: [propertyFor: project.propertyApp.enums.Enums.PropertyFor.RENT])}" class="btn btn-info" >For Rent</a></li>
            <li><a href="${createLink(controller: "property", action: "allSaleProperties", params: [propertyFor: project.propertyApp.enums.Enums.PropertyFor.SALE])}" class="btn btn-info" >For Sale</a></li> &nbsp; &nbsp;
        </ul>



        <g:form class="navbar-form" role="search" controller="property" action="searchByLocation" >
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search Location" name="searchLocation" id="searchLocation">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
        </g:form>

        </div>

        %{--<div class="nav navbar-nav navbar-right">--}%
            %{--<div class="dropdown">--}%
                %{--<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">--}%
                    %{--<img style="height:50px;width:50px;"src="${createLink(controller: "dashboard", action: "renderImage")}" />--}%

                    %{--<sec:ifLoggedIn>--}%
                        %{--${project.propertyApp.person.Person.get(sec.loggedInUserInfo(field: 'id')).name}--}%

                    %{--</sec:ifLoggedIn>--}%

                    %{--<span class="caret"></span> </button>--}%
                %{--<ul class="dropdown-menu">--}%
                    %{--<li><a href="#">profile</a></li>--}%
                    %{--<li><a href="${createLink(controller:"logout")}">Logout</a></li>--}%
                    %{--<li><a href="#">Help</a></li>--}%
                %{--</ul>--}%
            %{--</div>--}%

        %{--</div>--}%
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

%{--<header id="intro">--}%
    %{--<div class="container">--}%
        %{--<div class="table">--}%
            %{--<div class="header-text">--}%
                %{--<div class="row">--}%
                    %{--<div class="col-md-12 text-center">--}%
                        %{--<h3 class="light white">Take care of your body.</h3>--}%
                        %{--<h1 class="white typed">It's the only place you have to live.</h1>--}%
                        %{--<span class="typed-cursor">|</span>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
%{--</header>--}%





<g:layoutBody/>

<script src="${resource(dir: 'js/theme', file: "bootstrap.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "custom.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "jquery-1.11.1.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "owl.carousel.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "wow.min.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "typewriter.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "jquery.onepagenav.js")}"></script>
<script src="${resource(dir: 'js/theme', file: "main.js")}"></script>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
%{--<script  src="${resource( file: 'jquery.min.js')}"></script>--}%
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</body>
</html>