
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>
%{--<h2>dekhfke</h2>--}%
<br>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <g:render template="sideBar"></g:render>
        </div>
        <div class="col-md-6">
            <g:if test="${flash.message}">
                <h4 style="color: #138a72" class="bold text-center">${flash.message}</h4>
            </g:if>
            <g:if test="${houseList}">

                <div class="bs-docs-section">

                    <h3 style="color: #138a72" class="bold text-center"><b>Houses Posted</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    %{--<div class="page-header">--}%
                    %{--</div>--}%


                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Location</th>
                                <th>Area(In sqfeet)</th>
                                <th>Price</th>
                                <th>Property For</th>
                                <th>Rooms</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${houseList}" var="hl">

                                <tr class="">
                                    %{--<td>4</td>--}%
                                    <td>${hl.location}</td>
                                    <td>${hl.area}</td>
                                    <td>${hl.price}</td>
                                    <td>${hl.propertyFor}</td>
                                    <td>${hl.rooms}</td>
                                    <td><g:link controller="property" action="editHouse" params="[houseId:hl.id]">Edit</g:link> </td>
                                    <td><g:link  controller="property" action="deleteHouse" params="[houseId: hl.id]">Delete</g:link> </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>
            </g:if>
            <g:else>
                <h3>No house property posted</h3>
            </g:else>

        </div>

        <br><br>

        <div class="col-md-6">
            <g:if test="${officeList}">

                <div class="bs-docs-section">

                    <h3 style="color: #138a72" class="bold text-center"><b>Offices Posted</b></h3>
                    %{--<div class="row">--}%
                    %{--<div class="col-lg-12">--}%
                    %{--<div class="page-header">--}%
                    %{--</div>--}%

                    <div class="bs-component">
                        <table class="table table-striped table-hover ">
                            <thead>
                            <tr>
                                %{--<th>#</th>--}%
                                <th>Location</th>
                                <th>Area(In sqfeet)</th>
                                <th>Price</th>
                                <th>Property For</th>
                                <th>Parking Facility</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>
                            <tbody>

                            <g:each in="${officeList}" var="hl">

                                <tr class="">
                                    %{--<td>4</td>--}%
                                    <td>${hl.location}</td>
                                    <td>${hl.area}</td>
                                    <td>${hl.price}</td>
                                    <td>${hl.propertyFor}</td>
                                    <td>${hl.parkingFacility}</td>
                                    <td><g:link  controller="property" action="editOffice" params="[officeId:hl.id]">Edit</g:link> </td>
                                    <td><g:link  controller="property" action="deleteOffice" params="[officeId:hl.id]">Delete</g:link> </td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div><!-- /example -->
                %{--</div>--}%
                %{--</div>--}%
                </div>
            </g:if>
            <g:else>
                <h3>No office property posted</h3>
            </g:else>

        </div>

        %{--<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>--}%

        %{--<!-- Modal -->--}%
        %{--<div class="modal fade" id="myModal" role="alertdialog">--}%
            %{--<div class="modal-dialog">--}%

                %{--<!-- Modal content-->--}%
                %{--<div class="modal-content">--}%
                    %{--<div class="modal-header">--}%
                        %{--<button type="button" class="close" data-dismiss="modal">&times;</button>--}%
                        %{--<h4 class="modal-title">Modal Header</h4>--}%
                    %{--</div>--}%
                    %{--<div class="modal-body">--}%
                        %{--<p>Some text in the modal.</p>--}%
                    %{--</div>--}%
                    %{--<div class="modal-footer">--}%
                        %{--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--}%
                    %{--</div>--}%
                %{--</div>--}%

            %{--</div>--}%
        %{--</div>--}%

    </div>
</div>


</body>

%{--<script>$(document).ready(function(){--}%
    %{--$("#confirm").click(function() {--}%
        %{--return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}')--}%
    %{--});--}%
%{--});</script>--}%
</html>