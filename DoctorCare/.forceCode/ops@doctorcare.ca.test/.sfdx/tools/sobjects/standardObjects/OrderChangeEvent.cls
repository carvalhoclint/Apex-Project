// This file is generated as an Apex representation of the
    //     corresponding sObject and its fields.
    // This read-only file is used by the Apex Language Server to
    //     provide code smartness, and is deleted each time you
    //     refresh your sObject definitions.
    // To edit your sObjects and their fields, edit the corresponding
    //     .object-meta.xml and .field-meta.xml files.
    
    global class OrderChangeEvent {
    global Account Account;
    global Id AccountId;
    global User ActivatedBy;
    global Id ActivatedById;
    global Datetime ActivatedDate;
    global Address BillingAddress;
    global String BillingCity;
    global String BillingCountry;
    global String BillingCountryCode;
    global String BillingGeocodeAccuracy;
    global Double BillingLatitude;
    global Double BillingLongitude;
    global String BillingPostalCode;
    global String BillingState;
    global String BillingStateCode;
    global String BillingStreet;
    global Object ChangeEventHeader;
    global User CompanyAuthorizedBy;
    global Id CompanyAuthorizedById;
    global Contract Contract;
    global Id ContractId;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global Contact CustomerAuthorizedBy;
    global Id CustomerAuthorizedById;
    global String Description;
    global Date EffectiveDate;
    global Date EndDate;
    global Id Id;
    global Boolean IsReductionOrder;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global String OrderNumber;
    global Order OriginalOrder;
    global Id OriginalOrderId;
    global User Owner;
    global Id OwnerId;
    global Pricebook2 Pricebook2;
    global Id Pricebook2Id;
    global String ReplayId;
    global Address ShippingAddress;
    global String ShippingCity;
    global String ShippingCountry;
    global String ShippingCountryCode;
    global String ShippingGeocodeAccuracy;
    global Double ShippingLatitude;
    global Double ShippingLongitude;
    global String ShippingPostalCode;
    global String ShippingState;
    global String ShippingStateCode;
    global String ShippingStreet;
    global String Status;
    global String StatusCode;
    global Decimal TotalAmount;
    global String Type;

    global OrderChangeEvent () 
    {
    }
}