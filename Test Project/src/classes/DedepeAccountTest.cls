@isTest
private class DedupeAccountTest1 {

    @isTest static void createAccount(){
        //Implement Test Code
        Account acc = new Account();
        acc.Name  = 'Dreamforce Demo';
        
        insert acc;

    }
}