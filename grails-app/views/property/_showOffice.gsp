<g:if test="${showOfficeList}">
    <h3 style="color: #138a72" class="bold text-center">Offices</h3>
    <g:each in="${showOfficeList}" var="hl">
        <div class="thumbnail">

            <div class="overlay-container">

                %{--<img src="assets/img/item-small.jpg">--}%
                <img style="height:250px;width:500px;"
                     src="${createLink(controller: "landing", action: "propertyImage", params: [photoLocation: hl.photoLocation])}"/>


                <div class="overlay-content">
                    <h3 class="h4 headline"><p class="bold"><span
                            class="1 blue">Office Type -</span> <span>${hl.officeType}</span></p></h3>


                    %{--<p>So you know you're getting a top quality property from an experienced team.</p>--}%
                </div><!-- /.overlay-content -->

            </div><!-- /.overlay-container -->
            <div class="thumbnail-meta">
                <p><i class="fa fa-fw fa-home"></i> ${hl.address}</p>
                <p><i class="fa fa-fw fa-map-marker"></i> ${hl.location}</p>
            </div>
            <div class="thumbnail-meta">
                <i class="fa fa-fw fa-info-circle"></i> ${hl.area}(sqfeet) | ${hl.parkingFacility? 'Parking Facility' : ''} | ${hl.propertyFor} | 2 Garage
            </div>
            <div class="thumbnail-meta">
                <i class="fa fa-fw fa-dollar"></i> <span class="h3">${hl.price}</span> <a href="#link" class="btn btn-link pull-right">View <i class="fa fa-arrow-right"></i></a>
            </div>

        </div>
    </g:each>
</g:if>

<g:else>
    %{--<h3>No office property posted</h3>--}%
    <h3 style="color: #138a72" class="bold text-center">No office property posted</h3>
</g:else>






















%{--<g:if test="${showOfficeList}">--}%

    %{--<div class="bs-docs-section">--}%

        %{--<h3 class="text-center alert-info"><b>Offices Posted</b></h3>--}%

                %{--<g:each in="${showOfficeList}" var="hl">--}%

                    %{--<div class="panel panel-default">--}%
                        %{--<div class="panel-body">--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Office Type -</span> <span>${hl.officeType}</span></p>--}%

                            %{--<img style="height:300px;width:500px;"--}%
                                 %{--src="${createLink(controller: "landing", action: "propertyImage", params: [photoLocation: hl.photoLocation])}"/>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Location -</span> <span>${hl.location}</span> &nbsp; &nbsp; <span--}%
                                    %{--class="2 blue">Address -</span><span>${hl.address}</span></p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Area(In sqfeet) -</span> <span>${hl.area}</span>  &nbsp; &nbsp;<span--}%
                                    %{--class="2 blue">Property For -</span> <span>${hl.propertyFor}</span></p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Parking Facility -</span>  <span>${hl.parkingFacility}</span> &nbsp; &nbsp; <span--}%
                                    %{--class="2 blue">Price -</span>  <span>${hl.price}</span></p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Possession - </span>  <span>${hl.possession}</span> &nbsp; &nbsp; <span--}%
                                    %{--class="2 blue"></span>  <span></span></p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Amenities -</span> <span>${hl.amenities}</span></p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Amenities -</span> <span>${hl.amenities?.lift ? 'Lift' : ''}</span>&nbsp;--}%
                                %{--<span>${hl.amenities?.waterStorage ? 'Water Storage' : ''}</span> &nbsp;--}%
                                %{--<span>${hl.amenities?.conferenceRoom ? 'Conference Room' : ''}</span> &nbsp;--}%
                                %{--<span>${hl.amenities?.atm ? 'ATM' : ''}</span> &nbsp;--}%
                                %{--<span>${hl.amenities?.gym ? 'Gym' : ''}</span> &nbsp;--}%
                            %{--</p>--}%

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Posted By -</span> <span>${hl.person.name}</span> &nbsp; &nbsp; <span--}%
                                    %{--class="2 blue">Phone No -</span>  <span>${hl.phoneNum}</span></p>--}%

                        %{--</div>--}%
                        %{--<demo:advBy person="${hl.person}"><p class="bold blue">Advertised By -</p></demo:advBy>--}%
                    %{--</div>--}%

                %{--</g:each>--}%
    %{--</div>--}%
%{--</g:if>--}%
%{--<g:else>--}%
    %{--<h3>No Office property posted</h3>--}%
%{--</g:else>--}%