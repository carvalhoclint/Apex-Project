trigger LeadingCompetitor on Opportunity (before insert, before update) {
    for (Opportunity opp : Trigger.new){
        //Add all our prices to a list in order of competitor
        List<Decimal> competitorPrices = new List<Decimal>();
        competitorPrices.add(opp.Competitor_1_Price__c);
        competitorPrices.add(opp.Competitor_2_Price__c);
        competitorPrices.add(opp.Competitor_3_Price__c);
        
        
        //Add all our competitors to a list in order of competitor
        List<String> competitor = new List<String>();
        competitor.add(opp.Competitor_1__c);
        competitor.add(opp.Competitor_2__c);
        competitor.add(opp.Competitor_3__c);

        // loop through all the competitors to find the position of the lowest and highest competitor price
        //Setting variables 
        Decimal lowestPrice;
        Decimal highestPrice;
        Integer lowestPricePosition; 
        Integer highestPricePosition;
        
        //Lowest competitor price 
        for (Integer i = 0; i < competitorPrices.size(); i++){
            Decimal currentPrice = competitorPrices.get(i);
            if (lowestPrice == null || currentPrice < lowestPrice){
                lowestPrice = currentPrice;
                lowestPricePosition = i;
            }
        
        }
        //Highest competitor price
        for (Integer i = 0; i < competitorPrices.size(); i++){
            Decimal currentPrice = competitorPrices.get(i);
            if (highestPrice == null || currentPrice > highestPrice){
                highestPrice = currentPrice;
                highestPricePosition = i;
            }


        }



        
        
    //populate the leading competitor field with the competitor matching the lowest price position
    opp.Leading_Competitor__c = competitor.get(lowestPricePosition);
    opp.Leading_Competitor_Price__c = competitorPrices.get(lowestPricePosition);
    opp.Lagging_Competitor__c = competitor.get(highestPricePosition);
    opp.Lagging_Competitor_Price__c = competitorPrices.get(highestPricePosition);


    }
}




//using If statements
        //create variables for our prices
        //Decimal price1 = opp.Competitor_1_Price__c;
        //Decimal price2 = opp.Competitor_2_Price__c;
        //Decimal price3 = opp.Competitor_3_Price__c;
        



// Sort the list from smallest to largest.
        //competitorPrices.sort();

        // Get the smallest price
        //Decimal smallestPrice = competitorPrices.get(0);

        //opp.FirstName = 'Hello';
        //opp.LastName = 'World';