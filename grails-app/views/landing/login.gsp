

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="app">
    <title></title>
</head>

<body>
<h3>hiiiiii</h3>

<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <div class="well bs-component">
                <h3>Please Login</h3>

                <form method="POST" action="${resource(file: '/j_spring_security_check')}"
                      class="form-horizontal">
                    <div class="form-group">
                        <label for="username1" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                            <g:textField class="form-control" id="username1" name="j_username"
                                         placeholder="Enter username"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password1" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                            <g:passwordField class="form-control" id="password1" name="j_password"
                                             placeholder="Enter password"/>
                        </div>
                    </div>
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>

                    <div class="form-group">
                        %{--<div class="col-sm-offset-2 col-sm-10">--}%
                        <button type="submit" class="btn btn-default col-sm-2">Login</button>

                    </div>
                    <label>
                        <g:link controller="register" action="forget">
                            Forget Your Password?
                        </g:link>
                    </label>
                </form>
            </div>
        </div>

        <div class="col-lg-4 col-lg-offset-1" >
            <div class=" well bs-component">

                <g:form method ="post" class="bs-component"  enctype="multipart/form-data"  controller="person" action="registration" >
                    <legend>Registration</legend>
                    <div class="form-group">
                        <label class="control-label" for="focusedInput">Name</label>
                        <input class="form-control" id="focusedInput" type="text" name="name" placeholder="Name" value="${registrationCO?.name}">
                    </div>
                    <div>
                        <g:hasErrors bean="${registrationCO}" field="name">
                            <div class="alert alert-danger">
                                <ul class="errors">
                                    <g:eachError bean="${registrationCO}" field="name">
                                        <li>${it.defaultMessage}</li>
                                    </g:eachError>
                                </ul>
                            </div>
                        </g:hasErrors>
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="age">Age</label>
                        <input class="form-control" id="age" type="text" name="age" placeholder="Age" value="${registrationCO?.age}">
                    </div>
                    <g:hasErrors bean="${registrationCO}" field="age">
                        <div class="alert alert-danger">
                            <ul class="errors">
                                <g:eachError bean="${registrationCO}" field="age">
                                    <li>${it.defaultMessage}</li>
                                </g:eachError>
                            </ul>
                        </div>
                    </g:hasErrors>

                    <div class="form-group has-warning">
                        <label class="control-label" for="inputWarning">UserName/Email</label>
                        <input type="text" class="form-control" id="inputWarning" name="username" placeholder="UserName/Email" value="${registrationCO?.username}">
                    </div>
                    <g:hasErrors bean="${registrationCO}" field="username">
                        <div class="alert alert-danger">
                            <ul class="errors">
                                <g:eachError bean="${registrationCO}" field="username">
                                    <li>${it.defaultMessage}</li>
                                </g:eachError>
                            </ul>
                        </div>

                    </g:hasErrors>

                    <div class="form-group has-error">
                        <label class="control-label" for="inputError">Password</label>
                        <input type="password" class="form-control" id="inputError" name="password" placeholder="Password"}">
                    </div>
                    <g:hasErrors bean="${registrationCO}" field="password">
                        <div class="alert alert-danger">
                            <ul class="errors">
                                <g:eachError bean="${registrationCO}" field="password">
                                    <li>${it.defaultMessage}</li>
                                </g:eachError>
                            </ul>
                        </div>
                    </g:hasErrors>

                    <div class="form-group has-success">
                        <label class="control-label" for="inputSuccess">Confirm Password</label>
                        <input type="password" class="form-control" id="inputSuccess" name="confirmPassword" placeholder="ConfirmPassword">
                    </div>
                    <g:hasErrors bean="${registrationCO}" field="confirmPassword">
                        <div class="alert alert-danger">
                            <ul class="errors">
                                <g:eachError bean="${registrationCO}" field="confirmPassword">
                                    <li>${it.defaultMessage}</li>
                                </g:eachError>
                            </ul>
                        </div>
                    </g:hasErrors>

                    <div class="form-group has-success">
                        <label class="control-label" for="inputSuccess">SignUp As </label>
                        <g:select name="role" from="['Owner', 'Agent', 'Customer']" noSelection="['': 'Select']"></g:select>
                    </div>
                    <g:hasErrors bean="${registrationCO}" field="role">
                        <div class="alert alert-danger">
                            <ul class="errors">
                                <g:eachError bean="${registrationCO}" field="role">
                                    <li>${it.defaultMessage}</li>
                                </g:eachError>
                            </ul>
                        </div>
                    </g:hasErrors>

                    <label class="control-label" >PhotoUpload</label>
                %{--<g:uploadForm  controller="landing" action="index" >--}%
                    <input type="file" name="photo"  id="photo"><br>

                    <div class="form-group">
                        <g:actionSubmit name="" class="btn btn-primary" value="Submit" action="registration"></g:actionSubmit>
                    </div>
                </g:form>
            </div>
        </div>

    </div>
</div>

</body>
</html>