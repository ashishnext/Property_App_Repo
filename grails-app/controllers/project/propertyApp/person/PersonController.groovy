package project.propertyApp.person

import com.github.scribejava.apis.LinkedInApi
import com.github.scribejava.core.builder.ServiceBuilder
import com.github.scribejava.core.model.OAuth1AccessToken
import com.github.scribejava.core.model.OAuth1RequestToken
import com.github.scribejava.core.model.OAuth1Token
import com.github.scribejava.core.model.OAuthRequest
import com.github.scribejava.core.model.Response
import com.github.scribejava.core.model.Token
import com.github.scribejava.core.model.Verb
import com.github.scribejava.core.oauth.OAuth10aService
import com.github.scribejava.core.oauth.OAuthService
import com.sun.java_cup.internal.runtime.Scanner
import grails.plugin.springsecurity.annotation.Secured
import org.codehaus.groovy.classgen.Verifier
import org.springframework.web.multipart.MultipartHttpServletRequest
import project.propertyApp.cmdObjs.RegistrationCO
import java.util.Scanner;

@Secured('permitAll')
class PersonController {
    def springSecurityService
    def personService

    String apiKey ="81e63y3is2gs0l"
    String apiSecret="4huX0IUr2yuRSYHI"
    String callBackUrl="http://localhost:8080/PropertyApp/person/success"
    String PROTECTED_RESOURCE_URL = "http://api.linkedin.com/v2/people/~(num-connections)?format=json";



    def index() {}

    def registration(RegistrationCO registrationCO) {
        MultipartHttpServletRequest mpr=(MultipartHttpServletRequest)request
        def file=mpr.getFile('photo')

        if (registrationCO.validate()) {
            personService.registrationMethod(registrationCO, file)
            springSecurityService.reauthenticate(registrationCO.username)
//            render(view: "/landing/home")
            redirect(controller: "landing", action: "home")
        }
        else {
            registrationCO.errors.each {println(it)}
            render(view: "/landing/login", model: [registrationCO:registrationCO])
        }

    }



    def registerOnLinkedIn () {
        println("In register")

        Token linkedInAccessToken=null;


        OAuthService service=new ServiceBuilder()
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .callback(callBackUrl)
                .build(LinkedInApi.instance());
        println("-------2------${service}--")
//
        Token requestToken = service.getRequestToken();
        println("************"+requestToken+"***********")

        println("-------3-------")
        String authUrl = service.getAuthorizationUrl(requestToken);
        println("************"+authUrl+"***********")


//        Verifier verifier = new Verifier(params.oauth_verifier);
//
//        Token accessToken = service.getAccessToken(requestToken, verifier);
//        OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL);
//        service.signRequest(accessToken, request);
//
//        Response response = request.send();

//        System.out.println(response.getBody());

        session['REQUEST_TOKEN'] = requestToken
        redirect(url: authUrl)
    }

    def success ={
        String v = params.oauth_verifier
        String r=  session['REQUEST_TOKEN']
        //String postId= POST_ID
        //println("********${postId}********")
      //  String url = "http://api.linkedin.com/v1/people/~/network/updates/key=${postId}/update-comments?format=json";

        println("********"+v+"***********")
        println("********"+r+"***********")

    //    linkedInXmlService.getXmlStream(v,session['REQUEST_TOKEN'])

        String accessTokenKey=""
        String accessTokenSecret=""

        String xmlString =""
        OAuthService service=new ServiceBuilder()
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .build(LinkedInApi.instance());

      //  Verifier verifier = new Verifier(params.oauth_verifier);

        Token accessToken = service.getAccessToken(session['REQUEST_TOKEN'], v);
        accessTokenSecret = accessToken.tokenSecret
        accessTokenKey = accessToken.token

        println("****Access Token****${accessToken}*******")


        OAuthRequest request = new OAuthRequest(Verb.GET, PROTECTED_RESOURCE_URL, service);
        service.signRequest(accessToken, request); // the access token from step 4
        Response response = request.send();
      //  xmlString=response.getBody();
        println(response.getBody())
      //  log.debug (xmlString)
       // processData(xmlString, accessTokenKey, accessTokenSecret)

    }

}
