<g:if test="${showOfficeList}">

    <div class="bs-docs-section">

        <h3 class="text-center alert-info"><b>Offices Posted</b></h3>

                <g:each in="${showOfficeList}" var="hl">

                    <div class="panel panel-default">
                        <div class="panel-body">

                            <p class="bold"><span
                                    class="1 blue">Office Type -</span> <span>${hl.officeType}</span></p>

                            <img style="height:300px;width:500px;"
                                 src="${createLink(controller: "landing", action: "propertyImage", params: [photoLocation: hl.photoLocation])}"/>

                            <p class="bold"><span
                                    class="1 blue">Location -</span> <span>${hl.location}</span> &nbsp; &nbsp; <span
                                    class="2 blue">Address -</span><span>${hl.address}</span></p>

                            <p class="bold"><span
                                    class="1 blue">Area(In sqfeet) -</span> <span>${hl.area}</span>  &nbsp; &nbsp;<span
                                    class="2 blue">Property For -</span> <span>${hl.propertyFor}</span></p>

                            <p class="bold"><span
                                    class="1 blue">Parking Facility -</span>  <span>${hl.parkingFacility}</span> &nbsp; &nbsp; <span
                                    class="2 blue">Price -</span>  <span>${hl.price}</span></p>

                            <p class="bold"><span
                                    class="1 blue">Possession - </span>  <span>${hl.possession}</span> &nbsp; &nbsp; <span
                                    class="2 blue"></span>  <span></span></p>

                            %{--<p class="bold"><span--}%
                                    %{--class="1 blue">Amenities -</span> <span>${hl.amenities}</span></p>--}%

                            <p class="bold"><span
                                    class="1 blue">Amenities -</span> <span>${hl.amenities?.lift ? 'Lift' : ''}</span>&nbsp;
                                <span>${hl.amenities?.waterStorage ? 'Water Storage' : ''}</span> &nbsp;
                                <span>${hl.amenities?.conferenceRoom ? 'Conference Room' : ''}</span> &nbsp;
                                <span>${hl.amenities?.atm ? 'ATM' : ''}</span> &nbsp;
                                <span>${hl.amenities?.gym ? 'Gym' : ''}</span> &nbsp;
                            </p>

                            <p class="bold"><span
                                    class="1 blue">Posted By -</span> <span>${hl.person.name}</span> &nbsp; &nbsp; <span
                                    class="2 blue">Phone No -</span>  <span>${hl.phoneNum}</span></p>

                        </div>
                        <demo:advBy person="${hl.person}"><p class="bold blue">Advertised By -</p></demo:advBy>
                    </div>

                </g:each>
    </div>
</g:if>
<g:else>
    <h3>No Office property posted</h3>
</g:else>