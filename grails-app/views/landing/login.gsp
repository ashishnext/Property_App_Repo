

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="check">
    <title></title>
</head>

<body>

<section class="wrapper-sm wrapper-md bg-highlight">
    <div class="container">
        <div class="row text-center">
            <div class="col-sm-12">
                <h1>Connect with our platform</h1>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<section class="wrapper-md">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-4 col-md-offset-2">
                <h3 class="text-info">Create an account</h3>

                <g:form method="post" class="bs-component" enctype="multipart/form-data" controller="person"
                        action="registration">

                    <div class="form-group">
                        <label class="control-label" for="focusedInput">Name</label>
                        <input class="form-control" id="focusedInput" type="text" name="name" placeholder="Name"
                               value="${registrationCO?.name}">
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
                        <input class="form-control" id="age" type="text" name="age" placeholder="Age"
                               value="${registrationCO?.age}">
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

                    <div class="form-group ">
                        <label class="control-label" for="">UserName/Email</label>
                        <input type="text" class="form-control" id="ds" name="username"
                               placeholder="UserName/Email" value="${registrationCO?.username}">
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

                    <div class="form-group">
                        <label class="control-label" for="inputError">Password</label>
                        <input type="password" class="form-control" id="inputError" name="password"
                               placeholder="Password">
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

                    <div class="form-group">
                        <label class="control-label" for="inputSuccess">Confirm Password</label>
                        <input type="password" class="form-control" id="inputSuccess" name="confirmPassword"
                               placeholder="ConfirmPassword">
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

                    <div class="form-group">
                        <label class="control-label" for="inputSuccess">SignUp As</label>
                        <g:select name="role" from="['Owner', 'Agent', 'Customer']"
                                  noSelection="['': 'Select']"></g:select>
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

                    <label class="control-label">PhotoUpload</label>
                %{--<g:uploadForm  controller="landing" action="index" >--}%
                    <input type="file" name="photo" id="photo"><br>

                    <div class="form-group">
                        <g:actionSubmit name="" class="btn btn-primary" value="Submit"
                                        action="registration"></g:actionSubmit>
                    </div>
                </g:form>

            </div><!-- /.col -->
            <div class="col-sm-12 col-md-4">
                <div class="widget padding-md bg-secondary">
                    <h3>Access your account</h3>

                    <form method="POST" action="${resource(file: '/j_spring_security_check')}">
                    <div class="form-group ">
                        <label class="control-label" for="">UserName/Email</label>
                        <input type="text" class="form-control" id="us" name="j_username"
                               placeholder="UserName/Email">
                    </div>

                    <div class="form-group">
                        <label class="control-label" for="inputError">Password</label>
                        <input type="password" class="form-control" id="" name="j_password"
                               placeholder="Password">
                    </div>
                        <label>
                            <input type="checkbox" value="remember-me"> Remember me
                        </label>

                        <div class="form-group">
                            %{--<div class="col-sm-offset-2 col-sm-10">--}%
                            <button type="submit" class="btn btn-primary">Access account</button>
                        </div>
                    </form>

                </div><!-- /.widget -->
                <div class="alert alert-warning">
                    <i class="fa fa-info-circle"></i> Check your email &amp; click the confirmation link.
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section>

<g:link controller="person" action="registerOnLinkedIn"  >connect </g:link>






</body>
</html>