<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="project.propertyApp.property.House" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>
%{--<h2>Login as Owner or Agent to post property</h2>--}%


<br>
<div class="container-fluid">
    <div class="row">
        <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_OWNER, ROLE_AGENT">

            <div class="col-md-2">
                <g:render template="sideBar"></g:render>
            </div>

            <div class="col-md-5">
                %{--<g:render template="postHouse" model="[houseCO: houseCO]"></g:render>--}%


                <h4 class="heading bold">Post House For Rent/SALE</h4><br>
            %{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

                <g:form action="saveHouse" method="post" enctype="multipart/form-data" useToken="true">
                    <g:render template="postHouse" model="[houseCO:houseCO]"/>

                    <div class="form-group row">

                        <g:submitButton class="btn btn-primary" name="Post" ></g:submitButton>

                    </div>
                </g:form>

            </div>

            <div class="col-md-5">
                <h4 class="heading bold">Post Office For Rent/SALE</h4><br>
                <g:form action="saveOffice" method="post" enctype="multipart/form-data" useToken="true">
                    <g:render template="postOffice" model="[officeCO:officeCO]"></g:render>

                    <div class="form-group row">
               <g:submitButton name="Post" class="btn btn-primary" ></g:submitButton>
                    </div>
                </g:form>

            </div>

        </sec:ifAnyGranted>
    </div>
</div>
%{--<g:else>Login as Owner or Agent to post property</g:else>--}%
<sec:ifNotLoggedIn>

    <h2>Login as Owner or Agent to post property</h2><br>
    <li><a href="${createLink(controller: "landing", action: "login")}" class="btn btn-info">Login / SignUp</a></li>

</sec:ifNotLoggedIn>

</body>
</html>
