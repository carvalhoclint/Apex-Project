// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class User {
    global String AboutMe;
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global Account Account;
    global Id AccountId;
    global List<Order> ActivatedBy;
    global List<ProcessInstanceWorkitem> Actor;
    global Address Address;
    global String Alias;
    global List<ContentDocument> ArchivedBy;
    global List<AssetStatusHistory__c> Asset_Stage_History__r;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Document> Author;
    global String BadgeText;
    global String BannerPhotoUrl;
    global List<FieldDefinition> BusinessOwner;
    global CallCenter CallCenter;
    global Id CallCenterId;
    global List<Case_Aggregate_Snapshot__c> Case_Aggregate_Snapshots__r;
    global String City;
    global List<CombinedAttachment> CombinedAttachments;
    global String CommunityNickname;
    global List<Order> CompanyAuthorizedBy;
    global String CompanyName;
    global Contact Contact;
    global Id ContactId;
    global List<ContactRequest> ContactRequests;
    global List<Contact> Contacts__r;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<ContentVersion> ContentModifiedBy;
    global List<Contract> ContractsSigned;
    global String Country;
    global String CountryCode;
    global List<Report> CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<EntityDefinition> DataSteward;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global String DefaultGroupNotificationFrequency;
    global List<UserChangeEvent> DelegatedApprover;
    global Id DelegatedApproverId;
    global List<User> DelegatedUsers;
    global String Department;
    global String DigestFrequency;
    global String Division;
    global String Email;
    global String EmailEncodingKey;
    global List<EmailMessageRelation> EmailMessageRelations;
    global Boolean EmailPreferencesAutoBcc;
    global Boolean EmailPreferencesAutoBccStayInTouch;
    global Boolean EmailPreferencesStayInTouchReminder;
    global String EmployeeNumber;
    global List<ContentNotification> EntityIdentifier;
    global List<EventRelation> EventRelations;
    global List<MyDomainDiscoverableLogin> ExecuteApexHandlerAs;
    global List<AuthProvider> ExecutionUser;
    global String Extension;
    global List<ExternalDataUserAuth> ExternalDataUserAuths;
    global String Fax;
    global String FederationIdentifier;
    global List<EntitySubscription> FeedSubscriptions;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<UserFeed> Feeds;
    global String FirstName;
    global List<ContentVersion> FirstPublishLocation;
    global List<Document> Folder;
    global Boolean ForecastEnabled;
    global List<ForecastingOwnerAdjustment> ForecastOwner;
    global List<UserRole> ForecastUser;
    global String FullPhotoUrl;
    global String GeocodeAccuracy;
    global List<CollaborationGroupMemberRequest> GroupMembershipRequests;
    global List<CollaborationGroupMember> GroupMemberships;
    global List<Site> GuestUser;
    global List<SocialPost> HiddenBy;
    global Id Id;
    global Individual Individual;
    global Id IndividualId;
    global List<POEP__Feed> InsertedBy;
    global List<InstalledMobileApp> InstalledMobileApps;
    global List<CollaborationInvitation> Inviter;
    global List<PlatformAction> InvokedByUser;
    global Boolean IsActive;
    global Boolean IsExtIndicatorVisible;
    global Boolean IsProfilePhotoActive;
    global String LanguageLocaleKey;
    global List<ProcessInstanceNode> LastActor;
    global List<FeedItem> LastEditBy;
    global Datetime LastLoginDate;
    global List<AccountContactRelation> LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String LastName;
    global Datetime LastPasswordChangeDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global Double Latitude;
    global List<CampaignMember> LeadOrContactOwner;
    global String LocaleSidKey;
    global List<ApexLog> LogUser;
    global Double Longitude;
    global List<MC4SF__MC_Query__c> MC4SF__MC_Queries1__r;
    global List<User> ManagedUsers;
    global User Manager;
    global Id ManagerId;
    global String MediumBannerPhotoUrl;
    global String MediumPhotoUrl;
    global List<CaseTeamMember> Member;
    global String MobilePhone;
    global Double NPS_Score__c;
    global String Name;
    global Datetime OfflinePdaTrialExpirationDate;
    global Datetime OfflineTrialExpirationDate;
    global List<Opportunity_Snapshot__c> Opportunity_Snapshots__r;
    global List<ProcessInstanceStep> OriginalActor;
    global String OutOfOfficeMessage;
    global List<OwnedContentDocument> OwnedContentDocuments;
    global List<sma__MADriveProfile__c> Owner;
    global List<FeedComment> Parent;
    global List<PermissionSetAssignment> PermissionSetAssignments;
    global List<PermissionSetLicenseAssign> PermissionSetLicenseAssignments;
    global List<UserEmailPreferredPerson> PersonRecord;
    global String Phone;
    global List<UserRole> PortalAccountOwner;
    global String PostalCode;
    global Profile Profile;
    global Id ProfileId;
    global List<ForecastingQuota> QuotaOwner;
    global Boolean ReceivesAdminInfoEmails;
    global Boolean ReceivesInfoEmails;
    global List<RecordActionHistory> RecordActionHistories;
    global List<RecordAction> RecordActions;
    global List<Group> Related;
    global List<EventRelationChangeEvent> Relation;
    global List<EmailServicesAddress> RunAsUser;
    global List<Dashboard> RunningUser;
    global List<S4STEO__TransferOwner__c> S4STEO__TransferOwnersNewOwner__r;
    global List<S4STEO__TransferOwner__c> S4STEO__TransferOwnersOldOwner__r;
    global String SenderEmail;
    global String SenderName;
    global List<SessionPermSetActivation> SessionPermSetActivations;
    global List<CollaborationInvitation> SharedEntity;
    global List<UserShare> Shares;
    global String Signature;
    global String SmallBannerPhotoUrl;
    global String SmallPhotoUrl;
    global String State;
    global String StateCode;
    global String StayInTouchNote;
    global String StayInTouchSignature;
    global String StayInTouchSubject;
    global String Street;
    global List<StampAssignment> Subject;
    global List<ProcessInstance> SubmittedBy;
    global List<ContentUserSubscription> SubscribedToUser;
    global List<ContentUserSubscription> SubscriberUser;
    global Datetime SystemModstamp;
    global String TimeZoneSidKey;
    global String Title;
    global List<UndecidedEventRelation> UndecidedEventRelations;
    global List<UserPackageLicense> User;
    global List<UserEntityAccess> UserEntityAccessRights;
    global List<UserFieldAccess> UserFieldAccessRights;
    global List<OrderShare> UserOrGroup;
    global Boolean UserPermissionsAvantgoUser;
    global Boolean UserPermissionsCallCenterAutoLogin;
    global Boolean UserPermissionsInteractionUser;
    global Boolean UserPermissionsMarketingUser;
    global Boolean UserPermissionsMobileUser;
    global Boolean UserPermissionsOfflineUser;
    global Boolean UserPermissionsSFContentUser;
    global Boolean UserPermissionsSupportUser;
    global List<UserPreference> UserPreferences;
    global Boolean UserPreferencesActivityRemindersPopup;
    global Boolean UserPreferencesApexPagesDeveloperMode;
    global Boolean UserPreferencesCacheDiagnostics;
    global Boolean UserPreferencesContentEmailAsAndWhen;
    global Boolean UserPreferencesContentNoEmail;
    global Boolean UserPreferencesCreateLEXAppsWTShown;
    global Boolean UserPreferencesDisCommentAfterLikeEmail;
    global Boolean UserPreferencesDisMentionsCommentEmail;
    global Boolean UserPreferencesDisProfPostCommentEmail;
    global Boolean UserPreferencesDisableAllFeedsEmail;
    global Boolean UserPreferencesDisableBookmarkEmail;
    global Boolean UserPreferencesDisableChangeCommentEmail;
    global Boolean UserPreferencesDisableEndorsementEmail;
    global Boolean UserPreferencesDisableFileShareNotificationsForApi;
    global Boolean UserPreferencesDisableFollowersEmail;
    global Boolean UserPreferencesDisableLaterCommentEmail;
    global Boolean UserPreferencesDisableLikeEmail;
    global Boolean UserPreferencesDisableMentionsPostEmail;
    global Boolean UserPreferencesDisableMessageEmail;
    global Boolean UserPreferencesDisableProfilePostEmail;
    global Boolean UserPreferencesDisableSharePostEmail;
    global Boolean UserPreferencesEnableAutoSubForFeeds;
    global Boolean UserPreferencesEventRemindersCheckboxDefault;
    global Boolean UserPreferencesExcludeMailAppAttachments;
    global Boolean UserPreferencesFavoritesShowTopFavorites;
    global Boolean UserPreferencesFavoritesWTShown;
    global Boolean UserPreferencesGlobalNavBarWTShown;
    global Boolean UserPreferencesGlobalNavGridMenuWTShown;
    global Boolean UserPreferencesHasCelebrationBadge;
    global Boolean UserPreferencesHideBiggerPhotoCallout;
    global Boolean UserPreferencesHideCSNDesktopTask;
    global Boolean UserPreferencesHideCSNGetChatterMobileTask;
    global Boolean UserPreferencesHideChatterOnboardingSplash;
    global Boolean UserPreferencesHideEndUserOnboardingAssistantModal;
    global Boolean UserPreferencesHideLightningMigrationModal;
    global Boolean UserPreferencesHideS1BrowserUI;
    global Boolean UserPreferencesHideSecondChatterOnboardingSplash;
    global Boolean UserPreferencesHideSfxWelcomeMat;
    global Boolean UserPreferencesLightningExperiencePreferred;
    global Boolean UserPreferencesNewLightningReportRunPageEnabled;
    global Boolean UserPreferencesPathAssistantCollapsed;
    global Boolean UserPreferencesPipelineViewHideHelpPopover;
    global Boolean UserPreferencesPreviewCustomTheme;
    global Boolean UserPreferencesPreviewLightning;
    global Boolean UserPreferencesRecordHomeReservedWTShown;
    global Boolean UserPreferencesRecordHomeSectionCollapseWTShown;
    global Boolean UserPreferencesReminderSoundOff;
    global Boolean UserPreferencesShowCityToExternalUsers;
    global Boolean UserPreferencesShowCityToGuestUsers;
    global Boolean UserPreferencesShowCountryToExternalUsers;
    global Boolean UserPreferencesShowCountryToGuestUsers;
    global Boolean UserPreferencesShowEmailToExternalUsers;
    global Boolean UserPreferencesShowEmailToGuestUsers;
    global Boolean UserPreferencesShowFaxToExternalUsers;
    global Boolean UserPreferencesShowFaxToGuestUsers;
    global Boolean UserPreferencesShowManagerToExternalUsers;
    global Boolean UserPreferencesShowManagerToGuestUsers;
    global Boolean UserPreferencesShowMobilePhoneToExternalUsers;
    global Boolean UserPreferencesShowMobilePhoneToGuestUsers;
    global Boolean UserPreferencesShowPostalCodeToExternalUsers;
    global Boolean UserPreferencesShowPostalCodeToGuestUsers;
    global Boolean UserPreferencesShowProfilePicToGuestUsers;
    global Boolean UserPreferencesShowStateToExternalUsers;
    global Boolean UserPreferencesShowStateToGuestUsers;
    global Boolean UserPreferencesShowStreetAddressToExternalUsers;
    global Boolean UserPreferencesShowStreetAddressToGuestUsers;
    global Boolean UserPreferencesShowTitleToExternalUsers;
    global Boolean UserPreferencesShowTitleToGuestUsers;
    global Boolean UserPreferencesShowWorkPhoneToExternalUsers;
    global Boolean UserPreferencesShowWorkPhoneToGuestUsers;
    global Boolean UserPreferencesSortFeedByComment;
    global Boolean UserPreferencesSuppressEventSFXReminders;
    global Boolean UserPreferencesSuppressTaskSFXReminders;
    global Boolean UserPreferencesTaskRemindersCheckboxDefault;
    global Boolean UserPreferencesUserDebugModePref;
    global UserRole UserRole;
    global Id UserRoleId;
    global List<Site> UserSites;
    global String UserType;
    global String Username;
    global List<ContentNotification> Users;
    global String ebsta_booking_url__c;
    global List<geopointe__Check_In__c> geopointe__Check_Ins__r;
    global List<geopointe__Route_Share__c> geopointe__Geopointe_Route_Shares__r;
    global List<rh2__PS_Describe__c> rh2__Describes__r;
    global List<sma__MALocation__c> sma__MALocations__r;
    global List<sma__MATerritory__c> sma__MapAnythingTerritories__r;
    global List<sma__MAAnalytic__c> sma__MapAnything_Analytics__r;
    global List<sma__MAFolderPermission__c> sma__MapAnything_Folder_Permissions__r;
    global List<sma__MAFolder__c> sma__MapAnything_Folders__r;
    global List<sma__MALayer__c> sma__MapAnything_Layers__r;
    global List<sma__MASavedQry__c> sma__Saved_Queries__r;
    global List<sortablegrid__sdg_Preferences__c> sortablegrid__Sortable_Data_Grid_Preferences__r;
    global List<trailheadapp__User_Badge__c> trailheadapp__Trailhead_User_Badges__r;
    global List<trailheadapp__Trailmix_Assignment__c> trailheadapp__Trailmix_Assignments__r;
    global List<trailheadapp__User_Trailmix__c> trailheadapp__User_Trailmixes__r;

    global User () 
    {
    }
}