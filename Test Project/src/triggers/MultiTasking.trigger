trigger MultiTasking on Account (after insert, before update) {
   
    //steps
    for (Account acc : Trigger.new){
    //use if statement to see if values are selected
        if (acc.Main_Industries__c != null){
        //split values of picklist with ;
        List<String> PicklistBoolean = acc.Main_Industries__c.split(';');
        System.debug('List');
        System.debug(PicklistBoolean.size());
        //for loop of items in picklistboolean
        for(String item : PicklistBoolean){
            System.debug('inside item for loop');
            //create task associated with account and subject of item
            Task t      = new Task();
            t.Subject   = item;
            t.WhatId    = acc.Id;
            insert t;
            System.debug('Insert Task with: '+ item);

             }
        }


    }
    
    //pull in the values selected
    //create task with subject of select items


    }
    //requirements:
    //when an account is created, create a task for every item selected in the picklist field
    //make the task subject the name of the selected label
    //do not create a task if no item is selected.