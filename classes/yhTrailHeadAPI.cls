public class yhTrailHeadAPI {

   public String result{get;set;}    

   public void apiCallout(){

           HttpRequest req = new HttpRequest();

           // get current user's sessionId to use later as an access token

           string sid = UserInfo.getSessionId();

           System.debug('session information ' + sid);

           // extend timeout to 20 seconds for slow responses

           req.setTimeout(20000);

           // create new response object for collecting the callout results

           HttpResponse res = new HttpResponse();

           Http http = new Http();

           // based on remote setting in setup for Trailhead API:

           req.setEndpoint('https://api.trailhead.salesforce.com/v1/users?limit=10');

           req.setMethod('GET');

           req.setHeader('Content-Type', 'application/json; charset=utf-8');

       		//TODO: API key here
           req.setHeader('X-API-Key', '<insert your own Trailhead API key>');

           // set the access token from the same org

           req.setHeader('Authorization', 'Bearer '+ sid);

           //System.debug('request: '+ req.toString());

           // try callout to Trailhead API Rest API

           try {

               res = http.send(req);

               System.debug(res.getBody());

               System.debug('request: '+ req.toString());

               System.debug('response: '+ res.toString());

               result = res.toString();

           } catch(System.CalloutException e) {

               System.debug('Callout error: '+ e);

               System.debug(res.toString());

           }

           }

}