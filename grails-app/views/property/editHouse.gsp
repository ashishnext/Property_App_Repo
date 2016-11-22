
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title></title>
</head>

<body>
<h3>sdvsdf</h3>

<div class="container-fluid">
    <div class="row">

            <div class="col-md-2">
                <g:render template="sideBar"></g:render>
            </div>

            <div class="col-md-5">
                <h4 class="heading bold">Update House Property</h4><br>
            %{--<p class="description">A elementum ligula lacus ac quam ultrices a scelerisque praesent vel suspendisse scelerisque a aenean hac montes.</p>--}%

                <g:form action="updateHouse"  method="post" enctype="multipart/form-data">

                <g:render template="postHouse" model="[houseCO:houseObj? houseObj: houseCO]"></g:render>

                    <div class="form-group row">
                        <g:submitButton name="Update"></g:submitButton>
                    </div>

                </g:form>
            </div>
    </div>
</div>

</body>
</html>