// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Case {
    global Account Account;
    global Id AccountId;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global Id CaseAssignedTo__c;
    global Contact CaseAssignedTo__r;
    global List<CaseComment> CaseComments;
    global List<CaseContactRole> CaseContactRoles;
    global Id CaseCreatedBy__c;
    global Contact CaseCreatedBy__r;
    global String CaseNumber;
    global List<CaseSolution> CaseSolutions;
    global Double Case_Age_In_Business_Hours__c;
    global String Case_Assigned_To__c;
    global Datetime ClosedDate;
    global List<CombinedAttachment> CombinedAttachments;
    global String Comments;
    global Contact Contact;
    global String ContactEmail;
    global String ContactFax;
    global Id ContactId;
    global String ContactMobile;
    global String ContactPhone;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global Double Count__c;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String Created_By__c;
    global String Description;
    global String Difficulty__c;
    global Date Due_Date__c;
    global List<EmailMessage> EmailMessages;
    global String Email_Case_Assigned__c;
    global String Email_field_test__c;
    global List<EventRelation> EventRelations;
    global List<Event> Events;
    global Double FHOCareID__c;
    global String FHOCareIntegrationEmail__c;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<CaseFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<GoogleDoc> GoogleDocs;
    global Boolean HasCommentsUnreadByOwner;
    global Boolean HasSelfServiceComments;
    global List<CaseHistory> Histories;
    global Id Id;
    global Boolean IsClosed;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Datetime Last_Status_Change__c;
    global List<MarketingQuestionAnswer__c> Marketing_Questions_Answers__r;
    global String NPS_Survey_URL__c;
    global Id NPS_Survey__c;
    global NPS_Surveys__c NPS_Survey__r;
    global List<OpenActivity> OpenActivities;
    global String Origin;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<SocialPost> Posts;
    global String Priority;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global String Product_Service__c;
    global String Reason;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<FlowRecordRelation> RelatedRecord;
    global List<EventRelationChangeEvent> Relation;
    global String Secondary_Email__c;
    global List<CaseShare> Shares;
    global String Status;
    global String Subject;
    global String SuppliedCompany;
    global String SuppliedEmail;
    global String SuppliedName;
    global String SuppliedPhone;
    global Datetime SystemModstamp;
    global List<TaskRelation> TaskRelations;
    global List<Task> Tasks;
    global List<CaseTeamMember> TeamMembers;
    global List<CaseTeamTemplateRecord> TeamTemplateRecords;
    global Double Time_With_Customer__c;
    global Double Time_With_Support__c;
    global List<TopicAssignment> TopicAssignments;
    global String Type;
    global List<EventChangeEvent> What;
    global List<geopointe__Check_In__c> geopointe__Check_Ins__r;

    global Case () 
    {
    }
}