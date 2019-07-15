@isTest
private class SecretInfomationTest {

    @isTest static void createCase(){
        //Implement Test Code
                Case myCase = new Case();
                myCase.Product_Purchase_Date__c         = Date.today();
                myCase.CreatedDate                      = Date.today();
                myCase.Product_Total_Warranty_Days__c   = 15;
                myCase.Product_Has_Extended_Warranty__c = true;
                myCase.Origin                           = 'Phone';
                myCase.description                      = 'SSN';
        
                insert myCase;

                myCase.description                      =  'Social Security Number'  ;

                update myCase;

                myCase.description                      =   'Passport' ;

                update myCase;

                myCase.description                      =   'Bodyweight' ;

                update myCase;
            }
        

        
        
        /*
        myCase.description                      =  'Social Security Number'  ;

        update myCase;

        myCase.description                      =   'Passport' ;

        update myCase;

        myCase.description                      =   'Bodyweight' ;

        update myCase;
        */
    }