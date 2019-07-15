// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class OpportunityChangeEvent {
    global Account Account;
    global Id AccountId;
    global Decimal Amount;
    global Campaign Campaign;
    global Id CampaignId;
    global Object ChangeEventHeader;
    global Date CloseDate;
    global Boolean Closed_In_Next_30_Days__c;
    global Boolean Closed_In_Next_7_Days__c;
    global Boolean Closed_In_Next_90_Days__c;
    global Boolean Closed_In_Past_30_Days__c;
    global Boolean Closed_In_Past_7_Days__c;
    global Boolean Closed_In_Past_90_Days__c;
    global String Closed_In_Period__c;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Since_Created__c;
    global String Description;
    global String Duration__c;
    global String ForecastCategory;
    global String ForecastCategoryName;
    global Boolean HasOpportunityLineItem;
    global Id Id;
    global Boolean IsClosed;
    global Boolean IsWon;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LeadSource;
    global String Name;
    global User Owner;
    global Id OwnerId;
    global Pricebook2 Pricebook2;
    global Id Pricebook2Id;
    global Double Probability;
    global RecordType RecordType;
    global Id RecordTypeId;
    global Contact Referrer__c;
    global String Regional_Manager__c;
    global String ReplayId;
    global Decimal Revenue_to_Doctor__c;
    global String StageName;
    global String Type;
    global Double X1__c;

    global OpportunityChangeEvent () 
    {
    }
}