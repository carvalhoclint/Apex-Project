// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Event {
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global Account Account;
    global Id AccountId;
    global Date ActivityDate;
    global Datetime ActivityDateTime;
    global String Activity_Type_Rollup__c;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Since_Created__c;
    global Double Days_Since__c;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global String Description;
    global Integer DurationInMinutes;
    global String Email_Engagement__c;
    global Datetime EndDateTime;
    global List<EventRelationChangeEvent> Event;
    global List<EventRelation> EventRelations;
    global String EventStatus__c;
    global String EventSubtype;
    global List<EventWhoRelation> EventWhoRelations;
    global String FHO_Follow_Up__c;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<EventFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global Boolean First_meeting__c;
    global String GroupEventType;
    global Id Id;
    global Boolean IsAllDayEvent;
    global Boolean IsArchived;
    global Boolean IsChild;
    global Boolean IsDeleted;
    global Boolean IsGroupEvent;
    global Boolean IsPrivate;
    global Boolean IsRecurrence;
    global Boolean IsRecurrence2;
    global Boolean IsRecurrence2Exception;
    global Boolean IsRecurrence2Exclusion;
    global Boolean IsReminderSet;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String Location;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global String Patient_Count__c;
    global String Product_Discussed__c;
    global Datetime Recurrence2PatternStartDate;
    global String Recurrence2PatternText;
    global String Recurrence2PatternTimeZone;
    global String Recurrence2PatternVersion;
    global List<EventChangeEvent> RecurrenceActivity;
    global Id RecurrenceActivityId;
    global Integer RecurrenceDayOfMonth;
    global Integer RecurrenceDayOfWeekMask;
    global Date RecurrenceEndDateOnly;
    global String RecurrenceInstance;
    global Integer RecurrenceInterval;
    global String RecurrenceMonthOfYear;
    global Datetime RecurrenceStartDateTime;
    global String RecurrenceTimeZoneSidKey;
    global String RecurrenceType;
    global List<Event> RecurringEvents;
    global List<FlowRecordRelation> RelatedRecord;
    global Datetime ReminderDateTime;
    global String RingCentral__Call_Recording__c;
    global String RingCentral__RC_Logging_Type__c;
    global String RingCentral__Recording_Information__c;
    global Boolean Send_NPS_Survey__c;
    global String Sendgrid_ID__c;
    global String ShowAs;
    global Datetime StartDateTime;
    global String Subject;
    global Datetime SystemModstamp;
    global List<TopicAssignment> TopicAssignments;
    global String Type;
    global List<UndecidedEventRelation> UndecidedEventRelations;
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

    global Event () 
    {
    }
}