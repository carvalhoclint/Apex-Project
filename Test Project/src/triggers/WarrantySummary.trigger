trigger WarrantySummary on Case (before insert) {
    for (Case myCase : Trigger.new){
        // Set up variables to use in the warranty summary field
        String purchasedDate        = myCase.Product_Purchase_Date__c.format();
        String  createdDate         = Datetime.now().format();
        Integer warrantyDays        = myCase.Product_Total_Warranty_Days__c.intValue();
        Decimal warrantyPercentage  = ((myCase.Product_Purchase_Date__c.daysBetween(Date.today()) / myCase.Product_Total_Warranty_Days__c)* 100).setScale(2);    //((Date.today() - purchasedDate) / warrantyDays)* 100;
        Boolean hasExtendedWarranty = myCase.Product_Has_Extended_Warranty__c;

        // Populate summary field
        myCase.Warranty_Summary__c = 'Product purchased on '+ purchasedDate 
                                              +' and case created on ' + createdDate +'.\n' 
                                              + 'Warranty is for ' + warrantyDays+' Days,\n' 
                                              + ' and is '+ warrantyPercentage +'% through its warranty period.\n'
                                              +'Extended Warranty:'+hasExtendedWarranty +'.\n'
                                              +'Have a nice day!';


    }
    /*
    Product purchased on <<Purchase Date>> and case created on <<Case Created date>>. 
    Warranty is for <<Warrranty Total Days>> and is <<Warranty Percentage>> through its warranty period. 
    extended Warranty: <<Has Extended Warranty>>
    Have a nice day!


    ((todays date - created date ) / total days )* 100


    */
}