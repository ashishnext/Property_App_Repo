
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:hasOauthError>
    <div class="errors">
        <g:renderOauthError/>
    </div>
</g:hasOauthError>

<g:form url="[action:'change',controller:'person']" method="get">
    Your LinkedIn Profile:
    <textarea id="payload" style="width: 100%; height: 50%; color: red">${profileXML}</textarea>
    <p>
        <g:textField name="apiUrl" value="${apiUrl}" size="100%"/>
        <br/>
        <g:submitButton name="send" value="Send Request"/>
    </p>
</g:form>

</body>
</html>