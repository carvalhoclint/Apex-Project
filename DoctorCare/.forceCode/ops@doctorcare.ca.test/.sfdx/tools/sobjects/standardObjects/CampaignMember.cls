// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class CampaignMember {
    global Campaign Campaign;
    global Id CampaignId;
    global String CampaignType__c;
    global String Campaign_Status__c;
    global String City;
    global String CompanyOrAccount;
    global Contact Contact;
    global Id ContactId;
    global String Contact_Owner__c;
    global String Country;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Description;
    global Boolean DoNotCall;
    global String Email;
    global String Family_Service__c;
    global String Fax;
    global String FirstName;
    global Date FirstRespondedDate;
    global Boolean HasOptedOutOfEmail;
    global Boolean HasOptedOutOfFax;
    global Boolean HasResponded;
    global Id Id;
    global Double Interest_Rating__c;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LastName;
    global Lead Lead;
    global Id LeadId;
    global SObject LeadOrContact;
    global Id LeadOrContactId;
    global SObject LeadOrContactOwner;
    global Id LeadOrContactOwnerId;
    global String LeadSource;
    global List<ListEmailIndividualRecipient> ListEmailIndividualRecipients;
    global Double MapAnything_Latitude__c;
    global Double MapAnything_Longitude__c;
    global String MobilePhone;
    global String Name;
    global String Notes__c;
    global String Phone;
    global String PostalCode;
    global String Principal_Associate_Temp__c;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global String Registration_Questions_Comments__c;
    global List<FlowRecordRelation> RelatedRecord;
    global String Salutation;
    global String Seminar_Question_1__c;
    global String Seminar_Question_2__c;
    global String Seminar_Question_3__c;
    global String Seminar_Question_4__c;
    global String State;
    global String Status;
    global String Street;
    global Datetime SystemModstamp;
    global String Time_In_Session__c;
    global String Title;
    global String Type;
    global String X29_GTA_Clinic__c;

    global CampaignMember () 
    {
    }
}