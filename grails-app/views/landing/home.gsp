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
                    <g:form controller="property" action="search" class="form-inline" method="post">
                        <div class="row">
                            <div class="col-md-3">
                                <label for="">Search For:</label>
                                <select name="propertyType" class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="House:">
                                        <g:each in="${project.propertyApp.enums.Enums.HouseType.houseTypeList()}" var="ht">
                                        <option>${ht}</option>
                                        </g:each>
                                    </optgroup>
                                    <optgroup label="Office:">
                                        <g:each in="${project.propertyApp.enums.Enums.OfficeType.officeTypeList()}" var="ot">
                                            <option>${ot}</option>
                                        </g:each>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Status:</label>
                                <select name="propertyFor" class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
                                    <optgroup label="Status:">
                                        <g:each in="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}" var="pf">
                                            <option>${pf}</option>
                                        </g:each>
                                    </optgroup>
                                </select>
                            </div><!-- /.col -->
                            <div class="col-md-2">
                                <label for="">Location:</label>
                                <select name="searchLocation" class="form-control selectpicker show-tick" title='Choose One' data-live-search="true" data-style="btn-primary">
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
                                <select name="price" class="form-control selectpicker show-tick" title='Choose One' data-style="btn-primary">
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
                %{--<p><a href="#link" class="btn btn-lg btn-primary">Learn More »</a></p>--}%
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md bg-highlight">
    <div class="container">
        <div class="row">
            <g:if test="${flash.home}">
                <div class="col-md-offset-1 col-md-5">

                    <g:render template="/property/showHouse"
                              model="[showHouseList: project.propertyApp.property.House.newHousePosted()]"></g:render>

                </div><!-- /.col -->

                <div class=" col-md-5 ">

                    <g:render template="/property/showOffice"
                              model="[showOfficeList: project.propertyApp.property.Office.newOfficePosted()]"></g:render>

                </div><!-- /.col -->
            </g:if>

            <g:if test="${flash.rent}">
                %{--<h3 style="color: #00a8ff" class="bold">Search Rent Property</h3>--}%

                <g:if test="${allRentHouses || allRentOffices}">
                    <h3 style="color: #138a72" class="bold text-center">${flash.rent}</h3><br>

                    <div class="col-md-offset-1 col-md-5">
                        <g:render template="/property/showHouse" model="[showHouseList: allRentHouses]"></g:render>
                    </div>

                    <div class=" col-md-5 ">
                        <g:render template="/property/showOffice" model="[showOfficeList: allRentOffices]"></g:render>
                    </div>
                </g:if>

                <g:else><h4 style="color: #00a8ff" class="bold">No Property for rent posted</h4></g:else>

            </g:if>

            <g:if test="${flash.sale}">
                %{--<h3 style="color: #00a8ff" class="bold">Search Sale Property</h3>--}%

                <g:if test="${allSaleHouses || allSaleOffices}">
                    <h3 style="color: #138a72" class="bold text-center">${flash.sale}</h3><br>

                    <div class="col-md-offset-1 col-md-5">
                        <g:render template="/property/showHouse" model="[showHouseList: allSaleHouses]"></g:render>
                    </div>

                    <div class=" col-md-5 ">
                        <g:render template="/property/showOffice" model="[showOfficeList: allSaleOffices]"></g:render>
                    </div>
                </g:if>

                <g:else><h4 style="color: #00a8ff" class="bold">No Property for sale posted</h4></g:else>

            </g:if>

        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

</body>
</html>