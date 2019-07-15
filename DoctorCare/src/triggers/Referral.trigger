trigger Referral on Allied_Care_Referral__c (before update) {
    /*
    Initial Requirements:
    fire when Status (on referral object) =  Booked this trigger is fired
    */
    
    for(Allied_Care_Referral__c r : Trigger.new){
        DateTime dT = r.Appointment_Date_and_Time__c;
            //Date ReferralDate = date.newinstance(dT.year(), dT.month(), dT.day());
        Date ReferralDate = dT.date();
        System.debug('Trigger'+ReferralDate);
        //List for holding All referral fees which have the Appointment date between Valid to and valid from dates of the Referral fee
        List <Referral_Fee__c> fee = [ SELECT Id, Name, Valid_From__c, Valid_To__c, Allied_Care_Service__c, Supplier__c, Service_Type__c   FROM Referral_Fee__c Where Valid_From__c <= : ReferralDate OR Valid_To__c >= :ReferralDate];
            System.debug('Trigger:'+fee);
        //Check to see if Referral Status = Booked
        if(r.Status__c == 'Attended'){
            //string referral_id = r.id;

            //For loop for individual records in the "fee" list 
            for(Referral_Fee__c rf : fee){

            //Look for matching supplier + service + service type + valid date range
            if((r.Supplier__c == rf.Supplier__c) && r.Service_Type__c == ){

                System.debug('Trigger: SUPPLIER MATCH');
                //assign referral fee to referral
                rf.id == r.Referral_Fee__c;
                r.Referral_Fee__c == rf.id;
            
            //Look for matching supplier + service + valid date range
            } else if (r.Supplier__c == rf.Supplier__c && r.Allied_Care_Service__c == rf.Allied_Care_Service__c && r.Service_Type__c == null){
                r.Referral_Fee__c == rf.id;
            }else {
                System.debug('DO NOTHING');
            }


            System.debug('Trigger:'+ ReferralDate);
            System.debug('Trigger:'+ dT);
            //System.debug('Trigger:'+ referral_id);
    
            System.debug('Trigger:'+ fee);
            //System.debug('Trigger:'+ referral_id);
        



            }







        }

    }
    /*
    requirements:
    **DONE**find all referral Fees and put them in a list (soql query to add the valid from, valid to, Service, Service type, supplier and amount where referral.appoimntment date > referralFee.startDate and referral.appointmentDate < referralFee.endDate)
    compare the referral fees with the referral based on the combination of the referral values of: Service, Service Type, Appointment date, Supplier. 
    update "Referral Fee" lookup on Referral object with correct "Referral Fee" record. if "Is paid" checkbox is not checked. 
    
    if(r.Supplier__c == rf.Supplier__c && (rf.Allied_Care_Service__c == r.Allied_Care_Service__c)&& (rf.Service_Type__c == r.Service_Type__c)){


    Variables :
    **Referral Fee Object: API Name: Referral_Fee__c ***
    Valid From: Valid_From__c
    Valid To:	Valid_To__c
    Supplier:	Supplier__c
    Service: 	Allied_Care_Service__c
    Service Type:	Service_Type__c

    ****Referral: API Name: Allied_Care_Referral__c  *****
    Appointment Date and Time:	Appointment_Date_and_Time__c
    Referral Fee: 	Referral_Fee__c
    Supplier:	Supplier__c
    Service: 	Allied_Care_Service__c
    Service Type:	Service_Type__c
    Referral Fee:	Referral_Fee__c

    Matching Algo
    The matching algo is:

    Look for matching supplier + service + service type + valid date range
    Look for matching supplier + service + valid date range
    Look for matching supplier + valid date range
    Look for matching service + service type + valid date range
    Look for matching service + valid date range
    Look for anything valid date + valid date range




    */
}