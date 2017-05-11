public class authTestController {

    public string authtoken{get;set;}
    public string refereshtoken{get;set;}
    public string bodyprint{get;set;}
    
    //Settings needed on the google cloud console.One can store this securely in custom settings or an object.
    
    public static final string CLIENT_SECRET='5018d6523eb61d16a520559f5e67a5ae323758c0';//Fill as per your registered app settings in google console
    public static final string CLIENT_ID='cddba260f084b70ce08d509b27477395e5485af7';//Fill as per your registered app settings in google console
    public static final string REDIRECT_URL='https://ravi72munde-dev-ed--c.ap2.visual.force.com/apex/OAuthTesth';
    
    public static final string OAUTH_TOKEN_URL='https://launchpad.37signals.com/authorization/new';
    public static final string OAUTH_CODE_END_POINT_URL='https://launchpad.37signals.com/authorization/new';
    
    public static final string GRANT_TYPE='grant_type=authorization_code';
    
    //Scope URL as per oauth 2.0 guide of the google 
    //public static final string SCOPE='https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile';
    //public static final string STATE='/profile';
    
    //Approval Prompt Constant
    public static final string APPROVAL_PROMPT='force';

    public PageReference getToken() {
        string codeparam=apexpages.currentpage().getparameters().get('code');
      
            // Instantiate a new http object
    Http h = new Http();
    
    String body='code='+codeparam+'&client_id='+CLIENT_ID+'&client_secret='+CLIENT_SECRET+'&redirect_uri='+REDIRECT_URL+'&'+GRANT_TYPE;
    
// Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
    HttpRequest req = new HttpRequest();
    req.setEndpoint(OAUTH_TOKEN_URL);
    req.setHeader('Content-Type','application/x-www-form-urlencoded');
    req.setMethod('POST');
    req.setBody(body);
    
    system.debug('REQUEST BODY'+body);

// Send the request, and return a response
    HttpResponse res = h.send(req);
    
    system.debug('body'+res.getbody());
    
    bodyprint=res.getbody();
    
    return null;
    }


    public PageReference connect() {
        String x='https://launchpad.37signals.com/authorization/new?client_id=cddba260f084b70ce08d509b27477395e5485af7&redirect_uri=https://ravi72munde-dev-ed--c.ap2.visual.force.com/apex/OAuthTest&type=web_server';
     
         pagereference p=new pagereference(x);
     return p;
    }

}