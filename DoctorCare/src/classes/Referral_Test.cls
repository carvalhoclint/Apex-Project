@isTest
public class Referral_Test {
        //Test Method for testing 
        static testMethod void TestMethod1(){
            Account acc   = new Account();
            acc.recordtypeid = '012i0000001O35PAAS';
            acc.name       = 'Test';
            acc.phone      = '1134567890';

            insert acc;
           System.debug('inserted acc for Test Method 1');

          Contact con = new Contact();
          con.recordtypeid = '0121Y000001EYOHQA4';
          con.LastName       = 'Test';
          con.Phone      = '1134567890';
          con.AccountId  = acc.id;
         
           insert con;
          System.debug('inserted con for Test Method 1');
            //Creation of "referred" by doctor
            
            Allied_Care_Referrer__c   doc  = new Allied_Care_Referrer__c();
            doc.Doctor__c = con.id;
            doc.Name      = 'Test';
            //doc.phone      = '1134567890';

            insert doc;
            System.debug('inserted doc for Test Method 1');

            //Creation of referral fee 
            Referral_Fee__c ref_fee = new Referral_Fee__c();
            ref_fee.Rate__c          = 100;
            ref_fee.Valid_From__c = Date.Today();
            ref_fee.Valid_To__c   = Date.newInstance(2049, 12, 9);

            insert ref_fee;
            System.debug('inserted ref_fee for Test Method 1');
            
            //Creation of "Referral" record
            Allied_Care_Referral__c ref      = new Allied_Care_Referral__c();
            ref.Status__c                    =  'Booked';
            ref.Allied_Care_Referrer__c      = doc.Id;
            ref.Notes__c                     = 'Testing Testing';
            ref.Appointment_Date_and_Time__c =  DateTime.newInstance(2019, 7, 10);


            insert ref;
            System.debug('inserted ref for Test Method 1');

            ref.Status__c           = 'Attended';
            update ref;
            System.debug('Updated ref update for test method 1');
             



        }
}