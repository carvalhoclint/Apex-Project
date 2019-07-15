// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class EventChangeEvent {
    global Account Account;
    global Id AccountId;
    global Date ActivityDate;
    global Datetime ActivityDateTime;
    global String Activity_Type_Rollup__c;
    global Object ChangeEventHeader;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Double Days_Since_Created__c;
    global Double Days_Since__c;
    global String Description;
    global Integer DurationInMinutes;
    global String Email_Engagement__c;
    global String EventStatus__c;
    global String FHO_Follow_Up__c;
    global Boolean First_meeting__c;
    global String GroupEventType;
    global Id Id;
    global Boolean IsAllDayEvent;
    global Boolean IsChild;
    global Boolean IsGroupEvent;
    global Boolean IsPrivate;
    global Boolean IsRecurrence;
    global Boolean IsRecurrence2Exclusion;
    global Boolean IsReminderSet;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String Location;
    global User Owner;
    global Id OwnerId;
    global String Patient_Count__c;
    global String Product_Discussed__c;
    global String Recurrence2PatternText;
    global String Recurrence2PatternVersion;
    global Event RecurrenceActivity;
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
    global Datetime ReminderDateTime;
    global String ReplayId;
    global String RingCentral__Call_Recording__c;
    global String RingCentral__RC_Logging_Type__c;
    global String RingCentral__Recording_Information__c;
    global Boolean Send_NPS_Survey__c;
    global String Sendgrid_ID__c;
    global String ShowAs;
    global String Subject;
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

    global EventChangeEvent () 
    {
    }
}