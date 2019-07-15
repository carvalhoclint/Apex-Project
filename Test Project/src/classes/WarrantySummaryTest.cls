@isTest
private class WarrantySummaryTest {

    @isTest static void createCase(){
        //Implement Test Code
        Case myCase = new Case();
        myCase.Product_Purchase_Date__c         = Date.today();
        myCase.CreatedDate                      = Date.today();
        myCase.Product_Total_Warranty_Days__c   = 15;
        myCase.Product_Has_Extended_Warranty__c = true;
        myCase.Origin                           = 'Phone';
        insert myCase;

        //myLead.Company = 'Puralsight';
        //update myLead;
    
    }
}