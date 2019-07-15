trigger Task_SMS_Update on Task (before insert) {
    //Declares Sets for Lead, Contact and Account IDs
    Set<Id> leadId = new Set<Id>();
    Set<Id> ContactId = new Set<Id>();
    Set<Id> AccountId = new Set<Id>();
    
    //Checks what type of Object is associated with the task by checking the 1st 3 digits of thr Id
    for(Task t : Trigger.new){
        
        //Check to see if Task Type = SMS
        if(t.Type == 'SMS'){
        
        //Checks for WhoId (Leads and Contacts)
        if(t.WhoId != null){
            

              String s1 = t.WhoId;
              System.debug('WhoId: '+s1);                
               if(s1.left(3) == '00Q'){

                        leadId.add(t.WhoId);
                System.debug('Trigger: '+t.WhoId);
               }else if (s1.left(3) == '003') {

                        ContactId.add(t.WhoId);
                System.debug('Trigger: '+t.WhoId);

               }

               }
        //Checks for WhatId (Accounts)
        if (t.WhatId != null){
             String s2 = t.WhatId;
             System.debug('WhatId: '+s2);
            if (s2.left(3) == '001'){

                        AccountId.add(t.WhatId);
                System.debug('Trigger: '+t.WhatId);
         }

         }
        }

    //Adds the id and phone number of thwe contact to a list based on the initial id from the set.
    List <Contact> contact = new List <Contact>();
    contact =[Select Id, Phone From Contact Where Id In : ContactId];
    System.debug('Trigger'+contact);

    //Adds the id and phone number of the Account to a list based on the initial id from the set.
    List <Account> account = new List <Account>();
    account =[Select Id, Phone From Account Where Id In : AccountId];
    System.debug('Trigger'+account);

    //Adds the id and phone number of the Lead to a list based on the initial id from the set.
     
    List<Lead> lead = [Select Id, Phone From Lead Where Id In : leadId];
    System.debug('Trigger'+lead);
    

    //Trigger to update the Task SMS # using the info from Contact, Account or Leads
    for(Task tk: Trigger.New){
    
        
       //Loop to update the SMS Phone number value with the Account phone number
        for(Integer a = 0; a < account.size(); a++){
            System.debug('Trigger For loop');
                     tk.SMS_Phone_Number__c = account[a].Phone;
                     //Adds an error if the Account Phone number is null
                     if (account[a].Phone == null){
                        tk.SMS_Phone_Number__c.addError('Account Has no Phone Number, Please add a phone number to the Account record');
                     }
                     System.debug('For Loop: '+tk.SMS_Phone_Number__c);
                     System.debug('For Loop: '+account[a].Phone);
                        System.debug('Value of a: '+a);
            }
        //Loop to update the SMS Phone number value with the Contact phone number
        for(Integer c = 0; c < contact.size(); c++){
            System.debug('Trigger For loop');
                     tk.SMS_Phone_Number__c = contact[c].Phone;
                     //Adds an error if the Contact Phone number is null
                     if (contact[c].Phone == null){
                        tk.SMS_Phone_Number__c.addError('Contact Has no Phone Number, Please add a phone number to the Contact record');
                     }
                     System.debug('For Loop: '+tk.SMS_Phone_Number__c);
                     System.debug('For Loop: '+contact[c].Phone);
                        System.debug('Value of a: '+c);
            }    
        //Loop to update the SMS Phone number value with the Lead phone number
        for(Integer l = 0; l < lead.size(); l++){
            System.debug('Trigger For loop');
                     tk.SMS_Phone_Number__c = lead[l].Phone;
                    //Adds an error if the Lead Phone number is null
                    if (lead[l].Phone == null){
                        tk.SMS_Phone_Number__c.addError('Lead Has no Phone Number, Please add a phone number to the Lead record');
                     }
                     System.debug('For Loop: '+tk.SMS_Phone_Number__c);
                     System.debug('For Loop: '+lead[l].Phone);
                        System.debug('Value of a: '+l);
            }
        


       }
    }
}