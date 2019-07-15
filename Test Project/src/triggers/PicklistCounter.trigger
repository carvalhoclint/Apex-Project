trigger PicklistCounter on Account (before insert, before update) {
    //Populate Picklist Counter field  with the number of choices
    Integer counterNumber = 0;
    //Also add in an if statement to update the counter to 0 when all the picklist values are unckecked
    for (Account acc : Trigger.new){
    //Step 1: add all the picklist value boolean to a list/set.
    List<String> PicklistBoolean = new List<String>();
        PicklistBoolean.add(acc.Main_Industries__c);
        //PicklistBoolean.add(acc.Main_Industries__c.Apparel);
        //PicklistBoolean.add(acc.Main_Industries__c.Banking);
        //PicklistBoolean.add(acc.Main_Industries__c.Biotechnology);
        //PicklistBoolean.add(acc.Main_Industries__c.Chemicals);

    //Step 2: add the number of checked values to a counter. 
    

     if (acc.Main_Industries__c.contains('Agriculture') ){
                counterNumber = counterNumber + 1;
            }if (acc.Main_Industries__c.contains('Apparel') ){
                counterNumber = counterNumber + 1;
            }if (acc.Main_Industries__c.contains('Banking') ){
                counterNumber = counterNumber + 1;
            }if (acc.Main_Industries__c.contains('Biotechnology') ){
                counterNumber = counterNumber + 1;
            }if (acc.Main_Industries__c.contains('Chemicals') ){
                counterNumber = counterNumber + 1;
            }
            
    //Step 3 : Update the counter field with the number of fields populated.
    acc.Main_Industry_Counter__c = counterNumber;


    //Fields required: Main_Industries__c , Main_Industry_Counter__c
    // Picklist fields: Agriculture , Apparel , Banking , Biotechnology, Chemicals
    }
}