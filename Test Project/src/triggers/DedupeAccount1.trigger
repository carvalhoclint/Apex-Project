trigger DedupeAccount1 on Account (after insert) {
    for (Account acc : Trigger.new){
        Case c     = new Case();
        c.Subject  = 'Dedupe this Account';
        c.AccountId   = acc.Id;
        c.OwnerId  = '005f4000003ZRkT';
        c.Product_Total_Warranty_Days__c   = 15;
        c.Product_Purchase_Date__c         = Date.Today();
        c.Product_Has_Extended_Warranty__c = true;
        c.Origin                           = 'Phone';
        insert c;

    }
}