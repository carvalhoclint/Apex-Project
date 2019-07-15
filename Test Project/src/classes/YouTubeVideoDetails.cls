/**
 * This class exposes methods
 * that calls the YouTube API 
 * to get the details of
 * particular video that user want 
 *
 * @author      Thamaraikannan
 * @since       10/03/2016
 * @version     1.0
 */
global class YouTubeVideoDetails {
    /**
     * This method calls the YouTube 
     * API with the encoded key and 
     * get the YouTube Video details
     * according to the video Id that
     * user is giving
     * 
     * @param   videoId get the YouTube VideoId from the user and give the details of that YouTube video
     * @since   10/03/2016 
     */ 
    
    webService static void details( String videoId , String recId ) {
        /**
         * Fetching the Encoded key and 
         * Enpoints by using the 
         * Custom Settings 
         */ 
        
        String enckey = YouTube_API_Setting__c.getInstance( 'YouTube API Key' ).Value__c;
        
        String endpt  = YouTube_API_Setting__c.getInstance( 'YouTube Endpoints' ).Value__c;
        endpt         = endpt.replace( '{YOUR_API_KEY}', enckey );
        endpt         = endpt.replace( '{VIDEO_ID}', videoId );
        
        HttpRequest httpReq  = new HttpRequest();
        Http http            = new Http();
        HttpResponse httpRes = new HttPResponse();
        
        httpReq.setMethod( 'GET' );
        httpReq.setEndpoint( endpt );
        
        httpRes = http.send( httpReq );
        
        /**
         * This parser will get the exact value 
         * alone by using nextToken and
         * nextValue for getting value 
         * by using getText
         */ 
        
        JSONParser countParser = JSON.createParser( httpRes.getBody() );
        
        String counts=' ';
        while(countParser.nextToken() != null)
        {
        if((countParser.getCurrentToken() == JSONToken.FIELD_NAME) && countParser.getCurrentName() == 'subscriberCount')
        {
        countParser.nextValue();
        counts=countParser.getText();
        }
        }
        

        /*
        System.debug('countParser')
        string counts = ' ';
        while (countParser.nextToken() != null) {

            if ((countParser.getCurrentToken() == JSONToken.FIELD_NAME) &&

                (countParser.getText() == 'subscriberCount')) {

                // Get the value.

                countParser.nextToken();

                // Compute the grand total price for all invoices.

                counts = countParser.getText();

            }

            

            }

            */

        


        System.debug('counts&&&'+counts);
        
        
        countParser.nextToken();
        countParser.nextToken();
        countParser.nextToken();
        countParser.nextToken();
        countParser.nextToken();
        countParser.nextToken();
        countParser.nextValue();

        system.debug('Grand total=' + counts);
        
        JSONParser likesParser = JSON.createParser( httpRes.getBody() );
        
        String views=' ';
        while(likesParser.nextToken() != null)
        {
        if((likesParser.getCurrentToken() == JSONToken.FIELD_NAME) && likesParser.getCurrentName() == 'viewCount')
        {
        likesParser.nextValue();
        views=likesParser.getText();
        }
        }
        System.debug('counts&&&'+counts);
        
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextToken();
        likesParser.nextValue();
        
        JSONParser dislikesParser = JSON.createParser( httpRes.getBody() );
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextToken();
        dislikesParser.nextValue();
        
        JSONParser commentParser = JSON.createParser( httpRes.getBody() );
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextToken();
        commentParser.nextValue();
        
        
        //String counts                = countParser.getText();
        //String likes                 = likesParser.getText();
        String dislikes              = dislikesParser.getText();
        String comment               = commentParser.getText();
        
        YouTube_Video__c yv         = new YouTube_Video__c();
        yv.Id                       = recId;
        yv.Number_Of_View_Counts__c = counts;
        yv.Number_Of_Likes__c       = views;
        yv.Number_Of_Dislikes__c    = dislikes;
        yv.Number_Of_Comments__c    = comment;
        
        update yv;
    }
}