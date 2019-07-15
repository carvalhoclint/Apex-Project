@isTest
public class Task_SMS_Update_Test {
        //Test Method for testing for contact only in Name lookup field
        static testMethod void TestMethod1(){
        
            Account acc   = new Account();
            acc.recordtypeid = '012i0000001O35PAAS';
            acc.name       = 'Test';
            acc.phone      = '1134567890';

            insert acc;
         System.debug('inserted acc for Test Method 1');

          Contact  con   = new    Contact();
         con.recordtypeid = '0121Y000001EYOHQA4';
         con.LastName       = 'Test';
         con.Phone      = '1134567890';
         con.AccountId  = acc.id;

            insert  con;
         System.debug('inserted con');
            Task task   = new Task();
            task.OwnerId      = '005i0000005K2x2AAC';
            task.Status       = 'Not Started';
            task.Priority     = 'Normal';
            task.WhoId        = con.id;
            task.Type         = 'SMS';
            task.Description  = 'Testing';

            insert task;
            System.debug('inserted Task 1');
        }

        //Test Method for testing for Account only in Related to (WhatId) field
        static testMethod void TestMethod2(){
        
         System.debug(task.SMS_Phone_Number__c);
            
            Account acc   = new Account();
            acc.recordtypeid = '012i0000001O35PAAS';
            acc.name       = 'Test';            
            acc.phone      = '2234567890';

            insert acc;
         System.debug('inserted acc Test Method 2');
            
            
            
            Task task1   = new Task();
            task1.OwnerId      = '005i0000005K2x2AAC';
            task1.Status       = 'Not Started';
            task1.Priority     = 'Normal';
            task1.WhatId       = acc.id;
            task1.Type         = 'SMS';
            task1.Description  = 'Testing';

            System.debug(task1.SMS_Phone_Number__c);
            insert task1;

         System.debug('inserted Task 2');
         System.debug([Select SMS_Phone_Number__c from Task WHERE Id = :task1.Id]);
        
        }
        //Method for testing for Lead Only in Name (WhoId) field of Task 
        static testMethod void TestMethod3(){
            
            Lead ld   = new Lead();
            //acc.recordtypeid = '012i0000001O35PAAS';
            ld.LastName   = 'Test';
            ld.Company    = 'MAC';
            ld.Status     = 'Open - Not Contacted';
            ld.Phone      = '3334567890';


            insert ld;
         System.debug('inserted ld Test Method 3');

            Task task3   = new Task();
            task3.OwnerId      = '005i0000005K2x2AAC';
            task3.Status       = 'Not Started';
            task3.Priority     = 'Normal';
            task3.WhoId        = ld.id;
            task3.Type         = 'SMS';
            task3.Description  = 'Testing';

            System.debug(task3.SMS_Phone_Number__c);
            insert task3;

         System.debug('inserted Task 3');
         System.debug([Select SMS_Phone_Number__c from Task WHERE Id = :task3.Id]);
               





        }

        //Method for testing for Lead Only with no phone number added
        static testMethod void TestMethod4(){
            
            Lead ld   = new Lead();
            //acc.recordtypeid = '012i0000001O35PAAS';
            ld.LastName   = 'Test';
            ld.Company    = 'MAC';
            ld.Status     = 'Open - Not Contacted';
            //ld.Phone      = '3334567890'; (Lead has no phone number, should throw an error)


            insert ld;
         System.debug('inserted ld Test Method 4');

            Task task4   = new Task();
            task4.OwnerId      = '005i0000005K2x2AAC';
            task4.Status       = 'Not Started';
            task4.Priority     = 'Normal';
            task4.WhoId        = ld.id;
            task4.Type         = 'SMS';
            task4.Description  = 'Testing';

            System.debug(task4.SMS_Phone_Number__c);
            //Testing addError Method of Trigger
            try {
               insert task4;
            } catch (Exception e ) {
               System.assert(e.getMessage().contains('Lead Has no Phone Number, Please add a phone number to the Lead record'));
            }
            

         System.debug('inserted Task 4');
         System.debug([Select SMS_Phone_Number__c from Task WHERE Id = :task4.Id]);
               





        }

         //Method for testing for Contact Only with no phone number added
        static testMethod void TestMethod5(){
            
            Account acc   = new Account();
            acc.recordtypeid = '012i0000001O35PAAS';
            acc.name       = 'Test';
            acc.phone      = '1134567890';

            insert acc;
            System.debug('inserted acc for Test Method 5');

            Contact  con   = new    Contact();
            con.recordtypeid = '0121Y000001EYOHQA4';
            con.LastName       = 'Test';
            //con.Phone      = '1134567890'; (Contact has no phone number, should throw an error)
            con.AccountId  = acc.id;

            insert  con;

            Task task5   = new Task();
            task5.OwnerId      = '005i0000005K2x2AAC';
            task5.Status       = 'Not Started';
            task5.Priority     = 'Normal';
            task5.WhoId        = con.id;
            task5.Type         = 'SMS';
            task5.Description  = 'Testing';

            System.debug(task5.SMS_Phone_Number__c);

            //Testing addError method of trigger
            try {
               insert task5;
            } catch (Exception f) {
               System.assert(f.getMessage().contains('Contact Has no Phone Number, Please add a phone number to the Contact record'));
            }
            

            System.debug('inserted Task 5');
            System.debug([Select SMS_Phone_Number__c from Task WHERE Id = :task5.Id]);
               

        }







}