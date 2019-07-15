
@isTest
private class updateTwitterFollowersTest {

    @isTest static void createContact(){
        //Implement Test Code
        //Insert new lead 
        Contact myContact = new    Contact();
        myContact.FirstName  = 'test';
        myContact.LastName   = 'artesto';
        myContact.AccountId    = '0010r000008TFWzAAO';
        //myContact.Score__c   = 100;
        
        myContact.Twitter_Handle__c = 'whole30';
        insert myContact;

        myContact.LastName = 'Test';
        myContact.FirstName ='test';
        myContact.Twitter_Handle__c = 'melissa_hartwig';

        update myContact;

        /*
        myContact.LeadSource = 'Web';

        myContact.Score__c   = 90;

        update myContact;

        myContact.Score__c   = 80;

        update myContact;

        myContact.Score__c   = 70;

        update myContact;

        myContact.Score__c   = 60;

        update myContact;

        myContact.Score__c   = 50;

        update myContact;
        //myContact.Company = 'Puralsight';
        //update myContact;
        */
    }
}