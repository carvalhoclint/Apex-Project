public class TwitterProvider{
        
        public Twitter_Callout_Setting__mdt twitterCalloutSetting;
        public String accessToken;
        
        
        public TwitterProvider() {
        
            twitterCalloutSetting = [
                SELECT EndPoint__c, ConsumerKey__c, ConsumerSecret__c
                FROM Twitter_Callout_Setting__mdt
                WHERE DeveloperName = 'users'
                LIMIT 1
                
            ][0];
            
            accessToken =this.GetToken();
            
         }
         
         public List<UserRecord> FetchUserFromServer(String screenName){
         
         //Prepare and execute the callout
         HttpRequest req = new HttpRequest();
         req.setMethod('GET');
         req.setEndpoint(twitterCalloutSetting.Endpoint__c + screenName);
         req.setHeader('Authorization', 'Bearer'+ accessToken);
         HttpResponse res = new Http().send(req);
         
         //SUCCESS?, We expect to get back a 200 with json formatted as {"id": "123456"}
         if (res.getStatusCode() == 200) {
             System.debug('FetchUserFromServer.res.getBody(): ' + res.getBody());
             list<UserRecord> userRecord = (List<UserRecord>) JSON.deserialize('[' + res.getBody() + ']', List<UserRecord>.class);
             
             return userRecord;
             
            }   
            
            //Failure: We get back a non desired status code. log it for debugging and return null
            System.debug('TwitterProvider:FetchUserFromServer() Error callingTwitter /users/show.json. ' + res.toString()) ;
            return null;
            
          }
          
          
       public String GetToken(){
       
       String consumerKey = EncodingUtil.urlEncode(twitterCalloutSetting.ConsumerKey__c, 'UTF-8');
       String consumerSecret = EncodingUtil.urlEncode(twitterCalloutSetting.ConsumerSecret__c, 'UTF-8');
       Blob bearerToken = Blob.valueOf(consumerKey + ':' + consumerSecret);
       
       //Create the Authorization Header
       String authorizationHeader = 'Basic ' + EncodingUtil.base64Encode(bearerToken);
       
       //Prepare and execute the callout
       HttpRequest req = new HttpRequest();
       req.setEndpoint('https://api.twitter.com/oauth2/token');
       req.setMethod('POST');
       req.setHeader('Authorization', authorizationHeader);
       req.setBody('grant_type=client_credentials');
       HttpResponse res = new Http().send(req);
       
       //SUCCESS?, we expect to get back a 200 with json formatted as {"id":"123456"}
       if (res.getStatusCode() == 200){
       JSONParser parser = JSON.createParser(res.getBody());
       while (parser.nextToken() != null) {
           if (parser.getCurrentToken() == JSONToken.FIELD_NAME){
               String fieldName = parser.getText();
               parser.nextToken();
               if (fieldName == 'access_token'){
                   accessToken = parser.getText();
                   
                               }
                           }
       
       
                   }
                      System.debug('GetToken.res.getBody(): ' + res.getBody());
                      return accessToken;
       
       
       
            }
       
             //FAILURE: We got back a non desired ststus code. Log it for debugging and return null
             System.debug('TwitterProvider:GetToken() Error calling Twitter /oauth2/token. ' + res.toString());
             return null;
       }
       
       public virtual class UserRecord {
       
           public String Id {get; set; } //"96848570"
           public String Name { get; set;} // "Sean Plott"
           public String Screen_Name {get; set; } // "day9tv"      
           public String Description {get; set; } // "Learn lots. "
           public String Followers_Count {get; set; } //"215645"
              
           
           
           }
       
       
       
       
       
       
       
       }