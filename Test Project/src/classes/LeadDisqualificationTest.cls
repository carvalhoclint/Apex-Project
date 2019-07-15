@isTest
private class LeadDisqualificationTest {

    @isTest static void createLead(){
        //Implement Test Code
        //Insert new lead 
        Lead myLead = new Lead();
        myLead.FirstName  = 'test';
        myLead.LastName   = 'artesto';
        myLead.Company    = 'MAC';
        //myLead.Score__c   = 100;
        myLead.Status     = 'Open - Not Contacted';
    
        insert myLead;

        myLead.LastName = 'Test';
        myLead.FirstName ='test';

        update myLead;

        /*
        myLead.LeadSource = 'Web';

        myLead.Score__c   = 90;

        update myLead;

        myLead.Score__c   = 80;

        update myLead;

        myLead.Score__c   = 70;

        update myLead;

        myLead.Score__c   = 60;

        update myLead;

        myLead.Score__c   = 50;

        update myLead;
        //myLead.Company = 'Puralsight';
        //update myLead;
        */
    }
}