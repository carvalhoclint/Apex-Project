// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Opportunity {
    global List<APXT_CongaSign__Transaction__c> APXT_CongaSign_Transactions__r;
    global Account Account;
    global Id AccountId;
    global List<AccountPartner> AccountPartners;
    global List<ActivityHistory> ActivityHistories;
    global Decimal Amount;
    global List<Asset> Assets__r;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global Campaign Campaign;
    global Id CampaignId;
    global List<CampaignInfluence> CampaignInfluences;
    global Date CloseDate;
    global Boolean Closed_In_Next_30_Days__c;
    global Boolean Closed_In_Next_7_Days__c;
    global Boolean Closed_In_Next_90_Days__c;
    global Boolean Closed_In_Past_30_Days__c;
    global Boolean Closed_In_Past_7_Days__c;
    global Boolean Closed_In_Past_90_Days__c;
    global String Closed_In_Period__c;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<Contact> Contacts__r;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<Lead> ConvertedOpportunity;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Since_Created__c;
    global String Description;
    global String Duration__c;
    global List<EventRelation> EventRelations;
    global List<Event> Events;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<OpportunityFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global String Fiscal;
    global Integer FiscalQuarter;
    global Integer FiscalYear;
    global String ForecastCategory;
    global String ForecastCategoryName;
    global List<GoogleDoc> GoogleDocs;
    global Boolean HasOpenActivity;
    global Boolean HasOpportunityLineItem;
    global Boolean HasOverdueTask;
    global List<OpportunityFieldHistory> Histories;
    global Id Id;
    global Boolean IsClosed;
    global Boolean IsDeleted;
    global Boolean IsWon;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String LeadSource;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<OpportunityContactRoleChangeEvent> Opportunity;
    global List<OpportunityCompetitor> OpportunityCompetitors;
    global List<OpportunityContactRole> OpportunityContactRoles;
    global List<OpportunityHistory> OpportunityHistories;
    global List<OpportunityLineItem> OpportunityLineItems;
    global List<OpportunityPartner> OpportunityPartnersFrom;
    global User Owner;
    global Id OwnerId;
    global List<Opportunity__hd> Parent;
    global List<Partner> Partners;
    global Pricebook2 Pricebook2;
    global Id Pricebook2Id;
    global Double Probability;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global RecordType RecordType;
    global Id RecordTypeId;
    global Id Referrer__c;
    global Contact Referrer__r;
    global String Regional_Manager__c;
    global List<FlowRecordRelation> RelatedRecord;
    global List<EventRelationChangeEvent> Relation;
    global Decimal Revenue_to_Doctor__c;
    global List<SFGA__Google_Campaign__c> SFGA__R00N40000001HggrEAC__r;
    global List<SFGA__Ad_Group__c> SFGA__R00N40000001HggwEAC__r;
    global List<SFGA__Text_Ad__c> SFGA__R00N40000001Hgh5EAC__r;
    global List<SFGA__Keyword__c> SFGA__R00N40000001HghAEAS__r;
    global List<SFGA__Search_Phrase__c> SFGA__R00N40000001HghEEAS__r;
    global List<OpportunityShare> Shares;
    global String StageName;
    global Datetime SystemModstamp;
    global List<TaskRelation> TaskRelations;
    global List<Task> Tasks;
    global List<TopicAssignment> TopicAssignments;
    global String Type;
    global List<EventChangeEvent> What;
    global Double X1__c;
    global List<geopointe__Check_In__c> geopointe__Check_Ins__r;

    global Opportunity () 
    {
    }
}