@isTest
private class HelloWorld1Test {

    @isTest static void updateLead(){
        //Implement Test Code
        Lead myLead = new Lead();
        myLead.FirstName  = 'David';
        myLead.LastName   = 'Liu';
        myLead.Company    = 'Google';
        insert myLead;

        myLead.Company = 'Puralsight';
        update myLead;
    
    }
}