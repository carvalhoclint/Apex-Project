trigger DedupeAccount1 on Account (after insert) {
    for (Account acc : Trigger.new){
        Case c     = new Case();
        c.Subject  = 'Dedupe this Account';
        c.AccountId   = acc.Id;
        c.OwnerId  = '005f4000003ZRkT';
        insert c;

    }
}