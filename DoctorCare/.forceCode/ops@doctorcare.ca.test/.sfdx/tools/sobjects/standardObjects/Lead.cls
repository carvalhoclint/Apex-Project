// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class Lead {
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global List<ActivityHistory> ActivityHistories;
    global Address Address;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global String CPSO__c;
    global List<CampaignMember> CampaignMembers;
    global String City;
    global List<CombinedAttachment> CombinedAttachments;
    global String Company;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global Account ConvertedAccount;
    global Id ConvertedAccountId;
    global Contact ConvertedContact;
    global Id ConvertedContactId;
    global Date ConvertedDate;
    global Opportunity ConvertedOpportunity;
    global Id ConvertedOpportunityId;
    global String Country;
    global String CountryCode;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global String Description;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global String Email;
    global Datetime EmailBouncedDate;
    global String EmailBouncedReason;
    global List<EmailMessageRelation> EmailMessageRelations;
    global List<EmailStatus> EmailStatuses;
    global List<EventRelation> EventRelations;
    global List<EventWhoRelation> EventWhoRelations;
    global List<Event> Events;
    global String Fax;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<LeadFeed> Feeds;
    global String FirstName;
    global List<ContentVersion> FirstPublishLocation;
    global String GeocodeAccuracy;
    global List<GoogleDoc> GoogleDocs;
    global Boolean HasOptedOutOfEmail;
    global List<LeadHistory> Histories;
    global Id Id;
    global Individual Individual;
    global Id IndividualId;
    global Boolean IsConverted;
    global Boolean IsDeleted;
    global Boolean IsUnreadByOwner;
    global String JigsawContactId;
    global Date LastActivityDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LastName;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Double Latitude;
    global List<CampaignMember> LeadOrContact;
    global String LeadSource;
    global List<ListEmailIndividualRecipient> ListEmailIndividualRecipients;
    global Double Longitude;
    global Id MC4SF__MC_Subscriber__c;
    global MC4SF__MC_Subscriber__c MC4SF__MC_Subscriber__r;
    global Double MapAnything_Latitude__c;
    global Double MapAnything_Longitude__c;
    global Lead MasterRecord;
    global Id MasterRecordId;
    global String MobilePhone;
    global String Name;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global Double Number_of_Locations__c;
    global List<OpenActivity> OpenActivities;
    global String Other_Phone__c;
    global SObject Owner;
    global Id OwnerId;
    global String PEM__c;
    global List<FeedComment> Parent;
    global List<UserEmailPreferredPerson> PersonRecord;
    global List<SocialPersona> Personas;
    global String Phone;
    global String PhotoUrl;
    global String PostalCode;
    global List<SocialPost> Posts;
    global Double Primacy_Campaign__c;
    global List<OpenActivity> PrimaryWho;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global String Product_Interest__c;
    global String Rating;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global String Referral_Name__c;
    global Id Referred_by__c;
    global Contact Referred_by__r;
    global List<ContentDistribution> RelatedRecord;
    global List<EventRelationChangeEvent> Relation;
    global List<SFGA__Google_Campaign__c> SFGA__R00N40000001HggqEAC__r;
    global List<SFGA__Ad_Group__c> SFGA__R00N40000001HggvEAC__r;
    global List<SFGA__Text_Ad__c> SFGA__R00N40000001Hgh4EAC__r;
    global List<SFGA__Keyword__c> SFGA__R00N40000001Hgh9EAC__r;
    global List<SFGA__Search_Phrase__c> SFGA__R00N40000001HghFEAS__r;
    global String Salutation;
    global List<LeadShare> Shares;
    global String State;
    global String StateCode;
    global String Status;
    global String Street;
    global Datetime SystemModstamp;
    global List<TaskRelation> TaskRelations;
    global List<TaskWhoRelation> TaskWhoRelations;
    global List<Task> Tasks;
    global String Title;
    global List<TopicAssignment> TopicAssignments;
    global List<UndecidedEventRelation> UndecidedEventRelations;
    global String Website;
    global List<TaskChangeEvent> Who;
    global List<geopointe__Check_In__c> geopointe__Check_Ins__r;
    global String test__c;

    global Lead () 
    {
    }
}