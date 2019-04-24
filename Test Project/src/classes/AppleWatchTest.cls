@isTest
private class AppleWatchTest {

    @isTest static void createOpportunity(){
        //Implement Test Code
        Opportunity opp = new Opportunity();
        opp.Name  = 'Dreamforce Demo';
        opp.StageName    = 'Prospecting';
        opp.CloseDate = Date.today();
        insert opp;

    }
}