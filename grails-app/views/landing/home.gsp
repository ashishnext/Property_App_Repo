<%@ page import="project.propertyApp.enums.Enums" contentType="text/html;charset=UTF-8" %>
<html>
<head>`
    <meta name="layout" content="check">
    <title></title>
</head>

<body>

<section class="wrapper-lg bg-custom-home">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="widget padding-lg bg-dark">
                    <h1 class="heading-lg text-center text-light">Buy, Sell, or Rent Properties</h1>
                    <br class="spacer-lg">
                    <form action="" class="form-inline">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="">Search:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Personal:">
                                        <option>Apartment</option>
                                        <option>Condo</option>
                                        <option>Villa</option>
                                    </optgroup>
                                    <optgroup label="Business:">
                                        <option>Office</option>
                                        <option>Warehouse</option>
                                        <option>Studio</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Status:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Status:">
                                        <option>Buy</option>
                                        <option>Sale</option>
                                        <option>Rent</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-3">
                                <label for="">Location:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-live-search="true" data-style="btn-primary">
                                    <optgroup label="Location:">
                                        <option>Dubai</option>
                                        <option>Stockholm</option>
                                        <option>Changai</option>
                                        <option>Paris</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Price:</label>
                                <select class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Price:">
                                        <option>Up to $5.000</option>
                                        <option>Up to $10.000</option>
                                        <option>Up to $20.000</option>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Ready?</label>
                                <button class="btn btn-primary btn-block">Search</button>
                            </div>
                        </div>
                    </form>
                </div><!-- /.widget -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>
<!-- /hero -->

<section class="wrapper-md">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 text-center">
                <h2><i class="fa fa-trophy text-primary"></i> We are offering <span class="text-muted">the best real estate</span> deals</h2>
                <p class="lead">We pride ourselves on taking care of our customers. Between our detailed theme documentation, screencasts tand knowledgebase you’re sure to get up and running in no time.</p>
                <p><a href="#link" class="btn btn-lg btn-primary">Learn More »</a></p>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md bg-highlight">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-5">

                <g:render template="/property/showHouse" model="[showHouseList: project.propertyApp.property.House.newHousePosted()]"></g:render>
                %{--<div class="thumbnail">--}%
                    %{--<div class="overlay-container">--}%
                        %{--<img src="assets/img/item-small.jpg">--}%
                        %{--<div class="overlay-content">--}%
                            %{--<h3 class="h4 headline">Great Deal</h3>--}%
                            %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                        %{--</div><!-- /.overlay-content -->--}%
                    %{--</div><!-- /.overlay-container -->--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>--}%
                        %{--<p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>--}%
                    %{--</div>--}%
                %{--</div><!-- /.thumbnail -->--}%
            </div><!-- /.col -->
            %{--<div class="col-sm-6 col-md-3">--}%
                %{--<div class="thumbnail">--}%
                    %{--<div class="overlay-container">--}%
                        %{--<img src="assets/img/item-small.jpg">--}%
                        %{--<div class="overlay-content">--}%
                            %{--<h3 class="h4 headline">Great Deal</h3>--}%
                            %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                        %{--</div><!-- /.overlay-content -->--}%
                    %{--</div><!-- /.overlay-container -->--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>--}%
                        %{--<p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>--}%
                    %{--</div>--}%
                %{--</div><!-- /.thumbnail -->--}%
            %{--</div><!-- /.col -->--}%
            <div class=" col-md-5 ">
                <div class="thumbnail">
                    <div class="overlay-container">
                        <img src="assets/img/item-small.jpg">
                        <div class="overlay-content">
                            <h3 class="h4 headline">Great Deal</h3>
                            <p>So you know you're getting a top quality property from an experienced team.</p>
                        </div><!-- /.overlay-content -->
                    </div><!-- /.overlay-container -->
                    <div class="thumbnail-meta">
                        <p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>
                        <p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage
                    </div>
                    <div class="thumbnail-meta">
                        <i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
                    </div>
                </div><!-- /.thumbnail -->
            </div><!-- /.col -->
            %{--<div class="col-sm-6 col-md-3">--}%
                %{--<div class="thumbnail">--}%
                    %{--<div class="overlay-container">--}%
                        %{--<img src="assets/img/item-small.jpg">--}%
                        %{--<div class="overlay-content">--}%
                            %{--<h3 class="h4 headline">Great Deal</h3>--}%
                            %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                        %{--</div><!-- /.overlay-content -->--}%
                    %{--</div><!-- /.overlay-container -->--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>--}%
                        %{--<p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed |<a class="navbar-brand" href="index.html">--}%
                        %{--<img src="assets/img/logo-dark.png" alt="Website Logo">--}%
                    %{--</a> 1,5 Bath | 2 Garage--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>--}%
                    %{--</div>--}%
                %{--</div><!-- /.thumbnail -->--}%
            %{--</div><!-- /.col -->--}%
        </div><!-- /.row -->
        %{--<div class="row">--}%
            %{--<div class="col-sm-6 col-md-3">--}%
                %{--<div class="thumbnail">--}%
                    %{--<div class="overlay-container">--}%
                        %{--<img src="assets/img/item-small.jpg">--}%
                        %{--<div class="overlay-content"><a class="navbar-brand" href="index.html">--}%
                            %{--<img src="assets/img/logo-dark.png" alt="Website Logo">--}%
                        %{--</a>--}%
                            %{--<h3 class="h4 headline">Great Deal</h3>--}%
                            %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                        %{--</div><!-- /.overlay-content -->--}%
                    %{--</div><!-- /.overlay-container -->--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>--}%
                        %{--<p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>--}%
                    %{--</div>--}%
                %{--</div><!-- /.thumbnail -->--}%
            %{--</div><!-- /.col -->--}%
            %{--<div class="col-sm-6 col-md-3">--}%
                %{--<div class="thumbnail">--}%
                    %{--<div class="overlay-container">--}%
                        %{--<img src="assets/img/item-small.jpg">--}%
                        %{--<div class="overlay-content">--}%
                            %{--<h3 class="h4 headline">Great Deal</h3>--}%
                            %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                        %{--</div><!-- /.overlay-content -->--}%
                    %{--</div><!-- /.overlay-container -->--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<p><i class="fa fa-fw fa-home"></i> 1199 Pacific Hwy #110</p>--}%
                        %{--<p><i class="fa fa-fw fa-map-marker"></i> San Diego, CA 92101</p>--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-info-circle"></i> 1460 Ft | 2 Bed | 1,5 Bath | 2 Garage--}%
                    %{--</div>--}%
                    %{--<div class="thumbnail-meta">--}%
                        %{--<i class="fa fa-fw fa-dollar"></i> <span class="h3">350.000</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>--}%
                    %{--</div>--}%
                %{--</div><!-- /.thumbnail -->--}%
            %{--</div><!-- /.col -->--}%
            %{--<div class="col-md-6">--}%

                %{--<!-- Carousel -->--}%
                %{--<div id="my-carousel" class="carousel slide no-margin-bottom">--}%
                %{--<!-- indicators -->--}%
                %{--<ol class="carousel-indicators">--}%
                %{--<li data-target="#my-carousel" data-slide-to="0" class="active"></li>--}%
                %{--<li data-target="#my-carousel" data-slide-to="1"></li>--}%
                %{--</ol>--}%
                %{--<!-- carousel -->--}%
                %{--<div class="carousel-inner">--}%
                %{--<div class="item active">--}%
                %{--<img class="img-responsive" src="assets/img/wallpaper.jpg" alt="1200x500" >--}%
                %{--<div class="carousel-caption visible-lg">--}%
                %{--<h1>Bootstrap Framework Overhauled<br> Meet the new sexy</h1>--}%
                %{--<p class="lead">Beautifull Bootstrap skin with overhauled components.</p><br>--}%
                %{--</div>--}%
                %{--</div><!-- /.item -->--}%
                %{--<div class="item">--}%
                %{--<img class="img-responsive" src="assets/img/wallpaper.jpg" alt="1200x500" >--}%
                %{--<div class="carousel-caption visible-lg">--}%
                %{--<h1>We help you being awesome at what you really do</h1>--}%
                %{--<p class="lead">Providing the best service so you can concentrate on your thing</p>--}%
                %{--</div>--}%
                %{--</div><!-- /.item -->--}%
                %{--</div><!-- /.carousel-inner -->--}%
                %{--<!-- Controls -->--}%
                %{--<a class="left carousel-control" href="#my-carousel" data-slide="prev">--}%
                %{--<span class="glyphicon glyphicon-chevron-left"></span>--}%
                %{--</a>--}%
                %{--<a class="right carousel-control" href="#my-carousel" data-slide="next">--}%
                %{--<span class="glyphicon glyphicon-chevron-right"></span>--}%
                %{--</a>--}%
                %{--</div><!-- /.carousel -->--}%

            %{--</div><!-- /.col -->--}%
        %{--</div><!-- /.row -->--}%
    </div><!-- /.container -->
</section>
























%{--<div class="container-fluid">--}%
    %{--<div class="row">--}%

        %{--<div class="container-fluid bg-info">--}%
            %{--<div class="table">--}%
                %{--<div class="header-text">--}%
                    %{--<div class="row">--}%
                        %{--<div class="col-md-12 text-center">--}%

                            %{--<img style="height:450px;width:1280px;"src="${createLink(controller: "landing", action: "homeImage")}"/>--}%
                            %{--<h2 class="blue">Property App</h2>--}%

                            %{--<h3 class=" typed">One place for all your property related issues</h3>--}%
                            %{--<span class="typed-cursor"></span>--}%
                        %{--</div>--}%
                    %{--</div>--}%
                %{--</div>--}%
            %{--</div>--}%
        %{--</div>--}%
        %{--</div>--}%
    %{----}%

    %{--<div class="row">--}%

    %{--<g:if test="${flash.home}">--}%
        %{--<h3 style="color: #00a8ff" class="bold text-center">All properties posted</h3>--}%
        %{--<div class="col-md-6">--}%
            %{--<g:render template="/property/showHouse"--}%
                      %{--model="[showHouseList: project.propertyApp.property.House.newHousePosted()]"></g:render>--}%

            %{--<demo:houseList houses="${project.propertyApp.property.House.newHousePosted()}" ></demo:houseList>--}%
        %{--</div>--}%

        %{--<div class="col-md-6">--}%
            %{--<g:render template="/property/showOffice"--}%
                      %{--model="[showOfficeList: project.propertyApp.property.Office.newOfficePosted()]"></g:render>--}%
        %{--</div>--}%
    %{--</g:if>--}%

    %{--<g:if test="${flash.rent}">--}%
        %{--<h4 style="color: #00a8ff" class="bold">Search Rent Property </h4>--}%

        %{--<g:form class="form-horizontal" controller="property" action="search"--}%
                %{--params="[propertyFor: project.propertyApp.enums.Enums.PropertyFor.RENT]">--}%

            %{--<div class="form-group row">--}%
                %{--<label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>--}%

                %{--<div class="col-xs-3">--}%
                    %{--<g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"--}%
                                 %{--name="searchLocation"/>--}%
                %{--</div>--}%
            %{--</div>--}%


            %{--<div class="form-group row ">--}%
                %{--<label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>--}%

                %{--<g:select name="price" from="['0-5000', '5000-10000', '10000-15000', '15000-20000', '20000-30000']"--}%
                          %{--noSelection="['': 'Select range']"/>--}%
            %{--</div>--}%


            %{--<div class="form-group row">--}%
                %{--<g:submitButton name="Search" class="btn btn-primary"></g:submitButton>--}%
            %{--</div>--}%
        %{--</g:form>--}%


        %{--<g:if test="${allRentHouses || allRentOffices}">--}%
            %{--<h4 style="color: #00a8ff" class="bold">${flash.rent}</h4>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showHouse" model="[showHouseList: allRentHouses]"></g:render>--}%
            %{--</div>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showOffice" model="[showOfficeList: allRentOffices]"></g:render>--}%
            %{--</div>--}%
        %{--</g:if>--}%
        %{--<g:else><h4 style="color: #00a8ff" class="bold">No Property for rent posted</h4></g:else>--}%

    %{--</g:if>--}%

    %{--<g:if test="${flash.sale}">--}%
        %{--<h4 style="color: #00a8ff" class="bold">Search Sale Property </h4>--}%

        %{--<g:form class="form-horizontal" controller="property" action="search"--}%
                %{--params="[propertyFor: project.propertyApp.enums.Enums.PropertyFor.SALE]">--}%

            %{--<div class="form-group row">--}%
                %{--<label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>--}%

                %{--<div class="col-xs-3">--}%
                    %{--<g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"--}%
                                 %{--name="searchLocation"/>--}%
                %{--</div>--}%
            %{--</div>--}%


            %{--<div class="form-group row ">--}%
                %{--<label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>--}%

                %{--<g:select name="price" from="['0-500000', '500000-1000000', '1000000-2000000', '2000000-5000000', '5000000-7500000','7500000-9000000']"--}%
                          %{--noSelection="['': 'Select range']"/>--}%
            %{--</div>--}%


            %{--<div class="form-group row">--}%
                %{--<g:submitButton name="Submit" class="btn btn-primary"></g:submitButton>--}%
            %{--</div>--}%
        %{--</g:form>--}%

       %{--<g:if test="${allSaleHouses || allSaleOffices}">--}%
            %{--<h4 style="color: #00a8ff" class="bold">${flash.sale}</h4>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showHouse" model="[showHouseList: allSaleHouses]"></g:render>--}%
            %{--</div>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showOffice" model="[showOfficeList: allSaleOffices]"></g:render>--}%
            %{--</div>--}%
        %{--</g:if>--}%
        %{--<g:else><h4 style="color: #00a8ff" class="bold">No Property for sale posted</h4></g:else>--}%

    %{--</g:if>--}%

    %{--<g:if test="${flash.searchLocation}">--}%
        %{--<g:if test="${houseByLocation || officeByLocation}">--}%
            %{--<h4 style="color: #00a8ff" class="bold">Search Result</h4>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showHouse" model="[showHouseList: houseByLocation]"></g:render>--}%
            %{--</div>--}%

            %{--<div class="col-md-6">--}%
                %{--<g:render template="/property/showOffice" model="[showOfficeList: officeByLocation]"></g:render>--}%
            %{--</div>--}%
        %{--</g:if>--}%
        %{--<g:else><h4 style="color: #00a8ff" class="bold">No Result matching search</h4></g:else>--}%

    %{--</g:if>--}%



%{--<g:if test="${flash.search}">--}%
    %{--<g:if test="${houseBySearch || officeBySearch}">--}%
        %{--<h4 style="color: #00a8ff" class="bold">Search Result</h4>--}%

        %{--<div class="col-md-6">--}%
            %{--<g:render template="/property/showHouse" model="[showHouseList: houseBySearch]"></g:render>--}%
        %{--</div>--}%

        %{--<div class="col-md-6">--}%
            %{--<g:render template="/property/showOffice" model="[showOfficeList: officeBySearch]"></g:render>--}%
        %{--</div>--}%
    %{--</g:if>--}%
    %{--<g:else><h4 style="color: #00a8ff" class="bold">No Result matching search</h4></g:else>--}%

%{--</g:if>--}%


%{--</div>--}%
    %{----}%
%{--</div>--}%

</body>
</html>