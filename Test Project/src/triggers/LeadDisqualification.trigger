trigger LeadDisqualification on Lead (before insert, before update) {
    String testString = 'Test';
    String testString1 = 'test';
    
    
    for (Lead myLead : Trigger.new) {
        Boolean Test = Pattern.matches(myLead.FirstName, testString);
        Boolean Test1 = Pattern.matches(myLead.FirstName, testString1);
        Boolean Test2 = Pattern.matches(myLead.LastName, testString);
        Boolean Test3 = Pattern.matches(myLead.LastName, testString1);

        System.debug(myLead.FirstName);
        System.debug(myLead.LastName);
        if (myLead.LastName != null && myLead.LastName != null) {
            if ((Test || Test1 || Test2 || Test3) == true){
            System.debug(myLead.FirstName);
            System.debug(myLead.LastName);
            myLead.Status   = 'Disqualified';
            System.debug(myLead.FirstName);
            System.debug(myLead.LastName);
            }
           /* if (myLead.Score__c == 100){
            myLead.Grade__c = 'A+';

        } else if (myLead.Score__c >= 90) {
            myLead.Grade__c = 'A';

        } else if  (myLead.Score__c >= 80)      {
            myLead.Grade__c = 'B';

        } else       {
            myLead.Grade__c = 'F';
            myLead.Status   = 'Closed - Trash';
        }
        */

        }
    }

    //need to change the status of the lead when there is "test" in the name
    //ignore leads without test in the name
    //accommodate null fields
    //only execute if entire first name contains test
}