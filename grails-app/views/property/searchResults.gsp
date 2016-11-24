<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>

<section class="wrapper-xs bg-highlight">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">

                <g:form controller="property" action="search" class="form-inline" method="post">
                    <div class="row">
                        <div class="col-md-3">
                            <label for="">Search For:</label>
                            <select name="propertyType" class="form-control selectpicker show-tick" title='Choose One'
                                    data-style="btn-primary">
                                <optgroup label="House:">
                                    <g:each in="${project.propertyApp.enums.Enums.HouseType.houseTypeList()}" var="ht">
                                        <option>${ht}</option>
                                    </g:each>
                                </optgroup>
                                <optgroup label="Office:">
                                    <g:each in="${project.propertyApp.enums.Enums.OfficeType.officeTypeList()}"
                                            var="ot">
                                        <option>${ot}</option>
                                    </g:each>
                                </optgroup>
                            </select>
                        </div><!-- /.col -->
                        <div class="col-md-2">
                            <label for="">Status:</label>
                            <select name="propertyFor" class="form-control selectpicker show-tick" title='Choose One'
                                    data-style="btn-primary">
                                <optgroup label="Status:">
                                    <g:each in="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}"
                                            var="pf">
                                        <option>${pf}</option>
                                    </g:each>
                                </optgroup>
                            </select>
                        </div><!-- /.col -->
                        <div class="col-md-2">
                            <label for="">Location:</label>
                            <select name="searchLocation" class="form-control selectpicker show-tick" title='Choose One'
                                    data-live-search="true" data-style="btn-primary">
                                <optgroup label="Top Locations:">
                                    <option>Delhi</option>
                                    <option>Noida</option>
                                    <option>Gurgaon</option>
                                    <option>Pune</option>
                                    <option>Mumbai</option>
                                </optgroup>
                            </select>
                        </div><!-- /.col -->
                        <div class="col-md-3">
                            <label for="">Price:</label>
                            <select name="price" class="form-control selectpicker show-tick" title='Choose One'
                                    data-style="btn-primary">
                                <optgroup label="For Rent:">
                                    <option>0-5000</option>
                                    <option>5000-10000</option>
                                    <option>10000-20000</option>
                                    <option>20000-30000</option>
                                    <option>30000-50000</option>
                                </optgroup>
                                <optgroup label="For Sale:">
                                    <option>0-500000-(Up to 5 lacs)</option>
                                    <option>500000-1000000-(5 to 10 lacs)</option>
                                    <option>1000000-2000000-(10 to 20 lacs)</option>
                                    <option>2000000-5000000-(20 to 50 lacs)</option>
                                    <option>5000000-7500000-(50 to 75 lacs)</option>
                                    <option>7500000-10000000-(75lacs to 1 cr)</option>
                                </optgroup>
                            </select>
                        </div><!-- /.col -->
                        <div class="col-md-2">
                            <label for="">Ready?</label>
                            <button type="submit" class="btn btn-primary btn-block">Search</button>
                        </div>
                    </div>
                </g:form>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md">
    <div class="container">
        <div class="row">
            <!-- Main -->
            <div class="col-sm-12 col-md-9">
                %{--<div class="row">--}%
                %{--<article class="post">--}%
                %{--<div class="panel panel-secondary">--}%
                %{--<div class="panel-heading">--}%
                %{--<h3 class="panel-title">Featured Result</h3>--}%
                %{--</div>--}%
                %{--<div class="panel-body bg-highlight">--}%
                %{--<div class="col-sm-12 col-md-5">--}%
                %{--<a href="#link"><img class="img-responsive img-thumbnail" src="assets/img/item-large.jpg"></a>--}%
                %{--</div><!-- /.col -->--}%
                %{--<div class="col-sm-12 col-md-7">--}%
                %{--<h3><a href="#link">294 River Road, <span class="text-muted">Windsor CA, 95492</span></a></h3>--}%
                %{--<p><span class="label label-danger">SPONSORED</span> This home offers a great floor plan with kitchen open to a spacious living room and dining area.</p>--}%
                %{--<ul class="list-unstyled">--}%
                %{--<li><i class="fa fa-fw fa-th"></i> 1.460 Ft<sup>2</sup></li>--}%
                %{--<li><i class="fa fa-fw fa-columns"></i> 2 Beds</li>--}%
                %{--<li><i class="fa fa-fw fa-female"></i> 1,5 Bathrooms</li>--}%
                %{--<li><i class="fa fa-fw fa-truck"></i> 2 Garage</li>--}%
                %{--<li><i class="fa fa-fw fa-signal"></i> Internet</li>--}%
                %{--</ul>--}%
                %{--<p><a href="#link" class="btn btn-primary">View More »</a></p>--}%
                %{--</div><!-- /.col -->--}%
                %{--</div><!-- /.panel-body -->--}%
                %{--</div><!-- /.panel -->--}%
                %{--</article><!-- /.post -->--}%
                %{--</div><!-- /.row -->--}%
                <div class="row">
            <g:if test="${searchList}">
            <g:each in="${searchList}" var="sl">
                    <article class="post">
                        <div class="col-sm-12 col-md-5">

                            <a href="#link"><img class="img-responsive img-thumbnail" src="assets/img/item-small.jpg">
                            </a>
                        </div><!-- /.col -->
                        <div class="col-sm-12 col-md-7">
                            <h3><a href="#link">${sl.address} <span
                                    class="text-muted">${sl.location}</span></a></h3>

                            <p>This home offers a great floor plan with kitchen open to a spacious living room and dining area.</p>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-fw fa-th"></i> ${sl.area}<sup>2</sup></li>
                                <li><i class="fa fa-fw fa-columns"></i>For- ${sl.propertyFor}</li>
                                <li><i class="fa fa-fw fa-female"></i> 1,5 Bathrooms</li>
                                <li><i class="fa fa-fw fa-truck"></i> 2 Garage</li>
                                <li><i class="fa fa-fw fa-signal"></i> Internet</li>
                            </ul>

                            <p><a href="#link" class="btn btn-primary">View More »</a></p>
                        </div><!-- /.col -->
                    </article><!-- /.post -->
            </g:each>
            </g:if>
            <g:else>No result found</g:else>
                </div><!-- /.row -->
            </div>
        </div>
    </div>
</section>
%{--<div class="row">--}%
%{--<article class="post">--}%
%{--<div class="col-sm-12 col-md-5">--}%
%{--<a href="#link"><img class="img-responsive img-thumbnail" src="assets/img/item-small.jpg"></a>--}%
%{--</div><!-- /.col -->--}%
%{--<div class="col-sm-12 col-md-7">--}%
%{--<h3><a href="#link">40 Devils Hill Road, <span class="text-muted">Jackson, MS 39211</span></a></h3>--}%
%{--<p>This home offers a great floor plan with kitchen open to a spacious living room and dining area.</p>--}%
%{--<ul class="list-unstyled">--}%
%{--<li><i class="fa fa-fw fa-th"></i> 1.460 Ft<sup>2</sup></li>--}%
%{--<li><i class="fa fa-fw fa-columns"></i> 2 Beds</li>--}%
%{--<li><i class="fa fa-fw fa-female"></i> 1,5 Bathrooms</li>--}%
%{--<li><i class="fa fa-fw fa-truck"></i> 2 Garage</li>--}%
%{--<li><i class="fa fa-fw fa-signal"></i> Internet</li>--}%
%{--</ul>--}%
%{--<p><a href="#link" class="btn btn-primary">View More »</a></p>--}%
%{--</div><!-- /.col -->--}%
%{--</article><!-- /.post -->--}%
%{--</div><!-- /.row -->--}%
%{--<div class="row">--}%
%{--<article class="post">--}%
%{--<div class="col-sm-12 col-md-5">--}%
%{--<a href="#link"><img class="img-responsive img-thumbnail" src="assets/img/item-small.jpg"></a>--}%
%{--</div><!-- /.col -->--}%
%{--<div class="col-sm-12 col-md-7">--}%
%{--<h3><a href="#link">2323 Wildrose Lane, <span class="text-muted">Highland Park, MI 48203</span></a></h3>--}%
%{--<p>This home offers a great floor plan with kitchen open to a spacious living room and dining area.</p>--}%
%{--<ul class="list-unstyled">--}%
%{--<li><i class="fa fa-fw fa-th"></i> 1.460 Ft<sup>2</sup></li>--}%
%{--<li><i class="fa fa-fw fa-columns"></i> 2 Beds</li>--}%
%{--<li><i class="fa fa-fw fa-female"></i> 1,5 Bathrooms</li>--}%
%{--<li><i class="fa fa-fw fa-truck"></i> 2 Garage</li>--}%
%{--<li><i class="fa fa-fw fa-signal"></i> Internet</li>--}%
%{--</ul>--}%
%{--<p><a href="#link" class="btn btn-primary">View More »</a></p>--}%
%{--</div><!-- /.col -->--}%
%{--</article><!-- /.post -->--}%
%{--</div><!-- /.row -->--}%

</body>
</html>