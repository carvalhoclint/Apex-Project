trigger updateTwitterFollowers on Contact (after insert, after update) {
    
    Map<Id, String> twitterContacts = new Map<Id, String> ();

    for (Contact newContact : Trigger.new){
        //Contact oldContact = Trigger.oldMap.get(newContact.Id);
        System.debug(newContact.Id);
        if (String.isNotBlank(newContact.Twitter_Handle__c) )) {
            twitterContacts.put(newContact.Id, newContact.Twitter_Handle__c);
        System.debug(newContact.Twitter_Handle__c + newContact.Id);
        }

    }
    if (twitterContacts.size() > 0) {
        TwitterCallout.updateFollowers(twitterContacts);
        System.debug(twitterContacts);
    }

}