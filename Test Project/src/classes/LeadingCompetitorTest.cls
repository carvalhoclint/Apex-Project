@isTest
private class LeadingCompetitorTest {

    @isTest static void createOpportunity(){
        //Create new opportunity
        Opportunity opp           = new Opportunity();
        opp.Name                  = 'Dreamforce Demo';
        opp.StageName             = 'Prospecting';
        opp.CloseDate             = Date.today();
        opp.Competitor_1__c       = 'Amazon';
        opp.Competitor_2__c       = 'Google';
        opp.Competitor_3__c       = 'Microsoft';
        opp.Competitor_1_Price__c = 10000;
        opp.Competitor_2_Price__c = 20000;
        opp.Competitor_3_Price__c = 30000;
        
        insert opp;

    }



    // fields needed
    // competitor 1, 2, 3 and Competitor Price 1,2,3 
    //Competitor_1__c  , Competitor_1_Price__c
    //Competitor_2__c  , Competitor_2_Price__c
    // Competitor_3__c , Competitor_3_Price__c
}