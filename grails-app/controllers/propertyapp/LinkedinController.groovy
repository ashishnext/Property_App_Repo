package propertyapp

import com.github.scribejava.apis.LinkedInApi
import com.github.scribejava.core.builder.ServiceBuilder
import com.github.scribejava.core.model.Token
import com.github.scribejava.core.oauth.OAuthService

class LinkedinController {

    def index() {}

    String apiKey ="81e63y3is2gs0l"
    String apiSecret="4huX0IUr2yuRSYHI"
    String callBackUrl="http://localhost:8080/PropertyApp/linkedin/success"

    def registerOnLinkedIn () {
        println("In register")

        Token linkedInAccessToken=null;
        OAuthService service=new ServiceBuilder()
                .provider(LinkedInApi.class)
                .apiKey(apiKey)
                .apiSecret(apiSecret)
                .callback(callBackUrl)
                .build();

        Token requestToken = service.getRequestToken();
        String authUrl = service.getAuthorizationUrl(requestToken);
        session['REQUEST_TOKEN'] = requestToken
        redirect(url: authUrl)
    }
    def success ={
        String v = params.oauth_verifier
        String r=  session['REQUEST_TOKEN']

        linkedInXmlService.getXmlStream(v,session['REQUEST_TOKEN'])

    }
}
