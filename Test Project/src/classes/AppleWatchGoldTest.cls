@isTest
private class AppleWatchGoldTest {

    @isTest static void createOpportunity(){
        //Implement Test Code
        Opportunity opp   = new Opportunity();
        opp.Name          = 'Dreamforce Demo';
        opp.StageName     = 'Prospecting';
        opp.CloseDate     = Date.today();
        opp.Amount        = 50001;
        insert opp;

    }
}