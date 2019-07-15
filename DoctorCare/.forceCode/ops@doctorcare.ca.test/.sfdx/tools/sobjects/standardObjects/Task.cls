// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Task {
    global Account Account;
    global Id AccountId;
    global List<EmailMessage> Activity;
    global Date ActivityDate;
    global String Activity_Type_Rollup__c;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global String CallDisposition;
    global Integer CallDurationInSeconds;
    global String CallObject;
    global String CallType;
    global List<CombinedAttachment> CombinedAttachments;
    global Datetime CompletedDateTime;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Since_Created__c;
    global Double Days_Since__c;
    global String Description;
    global String Email_Engagement__c;
    global String EventStatus__c;
    global String FHO_Follow_Up__c;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<TaskFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global Boolean First_meeting__c;
    global Id Id;
    global Boolean IsArchived;
    global Boolean IsClosed;
    global Boolean IsDeleted;
    global Boolean IsHighPriority;
    global Boolean IsRecurrence;
    global Boolean IsReminderSet;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global User Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global String Patient_Count__c;
    global String Priority;
    global String Product_Discussed__c;
    global RecordType RecordType;
    global Id RecordTypeId;
    global Task RecurrenceActivity;
    global Id RecurrenceActivityId;
    global Integer RecurrenceDayOfMonth;
    global Integer RecurrenceDayOfWeekMask;
    global Date RecurrenceEndDateOnly;
    global String RecurrenceInstance;
    global Integer RecurrenceInterval;
    global String RecurrenceMonthOfYear;
    global String RecurrenceRegeneratedType;
    global Date RecurrenceStartDateOnly;
    global String RecurrenceTimeZoneSidKey;
    global String RecurrenceType;
    global List<Task> RecurringTasks;
    global List<FlowRecordRelation> RelatedRecord;
    global Datetime ReminderDateTime;
    global String RingCentral__Call_Recording__c;
    global String RingCentral__RC_Logging_Type__c;
    global String RingCentral__Recording_Information__c;
    global Boolean Send_NPS_Survey__c;
    global String Sendgrid_ID__c;
    global String Status;
    global String Subject;
    global Datetime SystemModstamp;
    global List<EmailStatus> Task;
    global List<TaskRelation> TaskRelations;
    global String TaskSubtype;
    global List<TaskWhoRelation> TaskWhoRelations;
    global List<TopicAssignment> TopicAssignments;
    global String Type;
    global SObject What;
    global Integer WhatCount;
    global Id WhatId;
    global SObject Who;
    global Integer WhoCount;
    global Id WhoId;
    global String ZapierEmail__c;
    global String rcsfl__CALL_UNIQUE_ID__c;
    global String rcsfl__CALL_UUID__c;
    global String rcsfl__Call_Recording__c;
    global String rcsfl__RC_Logging_Type__c;
    global String rcsfl__Recording_Information__c;
    global String rcsfl__key__c;
    global String stage__c;

    global Task () 
    {
    }
}