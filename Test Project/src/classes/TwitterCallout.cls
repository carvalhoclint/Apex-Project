public class TwitterCallout {
    @future(callout = true)
    public static void updateFollowers(Map<Id, String> twitterContacts){
        TwitterProvider twitterProvider = new TwitterProvider();
        List<Contact> contacts = new List<Contact>();

        for (Id contactId : twitterContacts.keySet()) {
            //this is where the callout happens - the API only returns one record but serializes it as an array
            List<TwitterProvider.UserRecord> userRecord = twitterProvider.FetchUserFromServer(twitterContacts.get(contactId));
            contacts.add(new Contact(Id = contactId, Twitter_Followers__c = userRecord[0].Followers_Count));
            System.debug(Twitter_Followers__c);
        }
        update contacts;


    }













}