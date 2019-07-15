@isTest
private class PicklistCounterTest {

    @isTest static void createAccount(){
        //Implement Test Code
        Account acc            = new Account();
        acc.Name               = 'Dreamforce Demo';
        acc.Main_Industries__c ='Apparel;Agriculture;Banking;Biotechnology';
        //acc.Main_Industries__c ='Chemicals';

        insert acc;
        
        acc.Main_Industries__c = '';

        update acc;

    }
}

//Apparel , Banking , Biotechnology, Chemicals