<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<div class="container-fluid">
    <div class="row">

        <div class="container-fluid bg-info">
            <div class="table">
                <div class="header-text">
                    <div class="row">
                        <div class="col-md-12 text-center">

                            <img style="height:450px;width:1280px;"
                                 src="${createLink(controller: "landing", action: "homeImage")}"/>

                            <h2 class="blue">Property App</h2>

                            <h3 class=" typed">One place for all your property related issues</h3>
                            <span class="typed-cursor"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">

        <g:if test="${flash.home}">
            <h3 style="color: #00a8ff" class="bold text-center">All properties posted</h3>

            <div class="col-md-6">
                <g:render template="/property/showHouse"
                          model="[showHouseList: project.propertyApp.property.House.newHousePosted()]"></g:render>

                <demo:houseList houses="${project.propertyApp.property.House.newHousePosted()}"></demo:houseList>
            </div>

            <div class="col-md-6">
                <g:render template="/property/showOffice"
                          model="[showOfficeList: project.propertyApp.property.Office.newOfficePosted()]"></g:render>
            </div>
        </g:if>

        <g:if test="${flash.rent}">
            <h4 style="color: #00a8ff" class="bold">Search Rent Property</h4>

            <g:form class="form-horizontal" controller="property" action="search"
                    params="[propertyFor: project.propertyApp.enums.Enums.PropertyFor.RENT]">

                <div class="form-group row">
                    <label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>

                    <div class="col-xs-3">
                        <g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"
                                     name="searchLocation"/>
                    </div>
                </div>


                <div class="form-group row ">
                    <label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>

                    <g:select name="price" from="['0-5000', '5000-10000', '10000-15000', '15000-20000', '20000-30000']"
                              noSelection="['': 'Select range']"/>
                </div>


                <div class="form-group row">
                    <g:submitButton name="Search" class="btn btn-primary"></g:submitButton>
                </div>
            </g:form>


            <g:if test="${allRentHouses || allRentOffices}">
                <h4 style="color: #00a8ff" class="bold">${flash.rent}</h4>

                <div class="col-md-6">
                    <g:render template="/property/showHouse" model="[showHouseList: allRentHouses]"></g:render>
                </div>

                <div class="col-md-6">
                    <g:render template="/property/showOffice" model="[showOfficeList: allRentOffices]"></g:render>
                </div>
            </g:if>
            <g:else><h4 style="color: #00a8ff" class="bold">No Property for rent posted</h4></g:else>

        </g:if>

        <g:if test="${flash.sale}">
            <h4 style="color: #00a8ff" class="bold">Search Sale Property</h4>

            <g:form class="form-horizontal" controller="property" action="search"
                    params="[propertyFor: project.propertyApp.enums.Enums.PropertyFor.SALE]">

                <div class="form-group row">
                    <label for="example-text-input7" class="col-xs-1 col-form-label">By Location</label>

                    <div class="col-xs-3">
                        <g:textField placeholder="Search" class="form-control" type="text" id="example-text-input7"
                                     name="searchLocation"/>
                    </div>
                </div>


                <div class="form-group row ">
                    <label for="example-text-input7" class="col-xs-1 col-form-label">By Price</label>

                    <g:select name="price"
                              from="['0-500000', '500000-1000000', '1000000-2000000', '2000000-5000000', '5000000-7500000', '7500000-9000000']"
                              noSelection="['': 'Select range']"/>
                </div>


                <div class="form-group row">
                    <g:submitButton name="Submit" class="btn btn-primary"></g:submitButton>
                </div>
            </g:form>

            <g:if test="${allSaleHouses || allSaleOffices}">
                <h4 style="color: #00a8ff" class="bold">${flash.sale}</h4>

                <div class="col-md-6">
                    <g:render template="/property/showHouse" model="[showHouseList: allSaleHouses]"></g:render>
                </div>

                <div class="col-md-6">
                    <g:render template="/property/showOffice" model="[showOfficeList: allSaleOffices]"></g:render>
                </div>
            </g:if>
            <g:else><h4 style="color: #00a8ff" class="bold">No Property for sale posted</h4></g:else>

        </g:if>

        <g:if test="${flash.searchLocation}">
            <g:if test="${houseByLocation || officeByLocation}">
                <h4 style="color: #00a8ff" class="bold">Search Result</h4>

                <div class="col-md-6">
                    <g:render template="/property/showHouse" model="[showHouseList: houseByLocation]"></g:render>
                </div>

                <div class="col-md-6">
                    <g:render template="/property/showOffice" model="[showOfficeList: officeByLocation]"></g:render>
                </div>
            </g:if>
            <g:else><h4 style="color: #00a8ff" class="bold">No Result matching search</h4></g:else>

        </g:if>



        <g:if test="${flash.search}">
            <g:if test="${houseBySearch || officeBySearch}">
                <h4 style="color: #00a8ff" class="bold">Search Result</h4>

                <div class="col-md-6">
                    <g:render template="/property/showHouse" model="[showHouseList: houseBySearch]"></g:render>
                </div>

                <div class="col-md-6">
                    <g:render template="/property/showOffice" model="[showOfficeList: officeBySearch]"></g:render>
                </div>
            </g:if>
            <g:else><h4 style="color: #00a8ff" class="bold">No Result matching search</h4></g:else>

        </g:if>

    </div>

</div>

</body>
</html>