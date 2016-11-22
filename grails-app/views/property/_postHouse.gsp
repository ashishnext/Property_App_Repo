<%@ page import="project.propertyApp.property.House" %>
<%@ page import="project.propertyApp.enums.Enums"%>

%{--<h4 class="heading bold">Post House For Rent/SALE</h4><br>--}%
%{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

%{--<g:form action="updateHouse" params="[houseId: houseCO?.id ]" method="post">--}%

<div class="form-group row">
    <label for="example-text-input" class="col-xs-2 col-form-label">House Type</label>

    <div class="col-xs-3">
        %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
        <g:select name="houseType"
                  from="${project.propertyApp.enums.Enums.HouseType.houseTypeList()}"
                  noSelection="['': 'Select']" value="${houseCO?.houseType}"></g:select>
    </div>
</div>

<g:hasErrors bean="${houseCO}" field="houseType">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="houseType">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>



    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Location</label>

        <div class="col-xs-10">
            <g:textField placeholder="Location" class="form-control" type="text"
                         id="example-text-input9" name="location" value="${houseCO?.location}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="location">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="location">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Address</label>

        <div class="col-xs-10">
            <g:textField placeholder="Address" class="form-control" id="example-text-input"
                         name="address" value="${houseCO?.address}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="address">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="address">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input1" class="col-xs-2 col-form-label">pincode</label>

        <div class="col-xs-10">
            <g:textField placeholder="pincode" class="form-control" id="example-text-input1"
                         name="pincode" value="${houseCO?.pincode}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="pincode">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="pincode">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input2" class="col-xs-2 col-form-label">No. of rooms</label>

        <div class="col-xs-10">
            <g:textField placeholder="Rooms" class="form-control" id="example-text-input2"
                         name="rooms" value="${houseCO?.rooms}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="rooms">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="rooms">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input3" class="col-xs-2 col-form-label">Area</label>

        <div class="col-xs-10">
            <g:textField placeholder="Area" class="form-control" id="example-text-input3" name="area"
                         value="${houseCO?.area}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="area">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="area">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input4" class="col-xs-2 col-form-label">Price</label>

        <div class="col-xs-10">
            <g:textField placeholder="Price" class="form-control" id="example-text-input4"
                         name="price" value="${houseCO?.price}"/>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="price">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="price">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>


<div class="form-group row">
    <label for="example-text-input4" class="col-xs-2 col-form-label">No. of Balconies</label>

    <div class="col-xs-10">
        <g:textField placeholder="Balconies in house" class="form-control" id="example-text-input4"
                     name="numOfBalconies" value="${houseCO?.numOfBalconies}"/>
    </div>
</div>

<g:hasErrors bean="${houseCO}" field="numOfBalconies">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="numOfBalconies">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>

<div class="form-group row">
    <label for="example-text-input4" class="col-xs-2 col-form-label">Phone No.</label>

    <div class="col-xs-10">
        <g:textField placeholder="Enter Phone No." class="form-control" id="example-text-input4"
                     name="phoneNum" value="${houseCO?.phoneNum}"/>
    </div>
</div>

<g:hasErrors bean="${houseCO}" field="phoneNum">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="phoneNum">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>

<div class="form-group row">
    <label for="example-text-input" class="col-xs-2 col-form-label">Possession</label>

    <div class="col-xs-3">
        %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
        <g:select name="possession"
                  from="${project.propertyApp.enums.Enums.Possession.possessionList()}"
                  noSelection="['': 'Select']" value="${houseCO?.possession}"></g:select>
    </div>
</div>

<g:hasErrors bean="${houseCO}" field="possession">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="possession">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>


<div class="form-group row">
    <label for="example-text-input4" class="col-xs-2 col-form-label">Amenities</label>

    <div class="col-xs-10">

        %{--<label class="checkbox-inline"><g:checkBox name="lift" value="${houseCO?.lift}" checked="${houseCO?.lift=='true'}"/>Lift</label>--}%
        %{--<label class="checkbox-inline"><g:checkBox name="waterStorage" value="${houseCO?.waterStorage }" checked="${houseCO?.waterStorage=='true'}"/>Water Storage</label>--}%
        %{--<label class="checkbox-inline"><g:checkBox name="atm" value="${houseCO?.atm}" checked="${houseCO?.atm=='true'}" />ATM</label><br>--}%
        %{--<label class="checkbox-inline"><g:checkBox name="conferenceRoom" value="${houseCO?.conferenceRoom}" checked="${houseCO?.conferenceRoom=='true'}"/>Conference Room</label>--}%
        %{--<label class="checkbox-inline"><g:checkBox name="gym" value="${houseCO?.gym}" checked="${houseCO?.gym=='true'}"/>Gym</label>--}%


    <label class="checkbox-inline"><g:checkBox name="lift"/>Lift</label>
    <label class="checkbox-inline"><g:checkBox name="waterStorage"/>Water Storage</label>
    <label class="checkbox-inline"><g:checkBox name="atm"/>ATM</label><br>
    <label class="checkbox-inline"><g:checkBox name="conferenceRoom" />Conference Room</label>
    <label class="checkbox-inline"><g:checkBox name="gym" />Gym</label>

        %{--<g:select name="amenities" from="${project.propertyApp.enums.Enums.Amenities.amenitiesList()}"--}%
                  %{--multiple="true" value="${houseCO?.amenities}" noSelection="['': 'Choose amenities']"></g:select>--}%

    </div>
</div>

<g:hasErrors bean="${houseCO}" field="amenities">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="amenities">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>




<div class="form-group row">
    <label for="example-text-input" class="col-xs-2 col-form-label">Furnished</label>

    <div class="col-xs-3">
        %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
        <g:select name="furnished"
                  from="${['true', 'false']}"
                  noSelection="['': 'Select']" value="${houseCO?.furnished}"></g:select>
    </div>
</div>

<g:hasErrors bean="${houseCO}" field="furnished">
    <div class="alert alert-danger">
        <ul class="errors">
            <g:eachError bean="${houseCO}" field="furnished">
                <li>${it.defaultMessage}</li>
            </g:eachError>
        </ul>
    </div>
</g:hasErrors>

    <div class="form-group row">
        <label for="example-text-input" class="col-xs-2 col-form-label">Property For</label>

        <div class="col-xs-3">
            %{--<input class="form-control" type="text" value="Rooms in house" id="example-text-input" name="rooms">--}%
            <g:select name="propertyFor"
                      from="${project.propertyApp.enums.Enums.PropertyFor.propertyForList()}"
                      noSelection="['': 'Select']" value="${houseCO?.propertyFor}"></g:select>
        </div>
    </div>

    <g:hasErrors bean="${houseCO}" field="propertyFor">
        <div class="alert alert-danger">
            <ul class="errors">
                <g:eachError bean="${houseCO}" field="propertyFor">
                    <li>${it.defaultMessage}</li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

<div class="form-group row">
       <label for="example-text-input" class="col-xs-2 col-form-label">Photo</label>

<input type="file" name="photoHouse" id="photoHouse" value="Choose Photo"><br>
</div>


<g:hiddenField name="id" value="${houseCO?.id}"/>

%{--<g:hiddenField name="id2" value="${houseCOId?.id2}"></g:hiddenField>--}%

%{--<div class="form-group row">--}%

%{--<g:submitButton name="Update"></++dfg:submitButton>--}%

%{--</div>--}%
%{--</g:form>--}%