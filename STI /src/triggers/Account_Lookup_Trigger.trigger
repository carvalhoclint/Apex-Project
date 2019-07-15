/**
* ─────────────────────────────────────────────────────────────────────────────────────────────────┐
* Updates Account On Related Supplier objects on Account insert.
*
* -Checks for Account Record type = Supplier
* - Adds Supplier Id and Account id to a map with Supplier as a key and Account id as value
* - Adds Supplier Id to a list
* 
* - Gets All purchase orders into a list
* - sets Account lookup on Purchase orders using the map
*
* - Gets All Lines into a list
* - sets Account lookup on Lines using the map
*
* - Gets All Line Items into a list
* - sets Account lookup on Line Items using the map
*
* - Gets NCR's into a list
* - sets Account lookup on NCR's using the map
*
* - Gets All Vendor Invoice's into a list
* - sets Account lookup on Vendor Invoice's using the map
*
* - Gets All Estimate Lines into a list
* - sets Account lookup on Estimate Lines using the map
*
*
*
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @author         Clint Carvaho   <clint@marketing-automation.ca> <Salesforce Consulting Canada>
* @modifiedBy     Clint Carvaho   <clint@marketing-automation.ca> <Salesforce Consulting Canada>
* @maintainedBy   Clint Carvaho   <clint@marketing-automation.ca> <Salesforce Consulting Canada>
* @version        1.0
* @created        2019-07-08
* @modified       2019-07-12
* 
* 
* ──────────────────────────────────────────────────────────────────────────────────────────────────
* @changes
* Added Supplier Files 
* ─────────────────────────────────────────────────────────────────────────────────────────────────┘
*/

trigger Account_Lookup_Trigger on Account (after insert) {
    /*
    list<account>myAccounts = new list<account>();
    myAccounts = [Select ID, Name,Supplier_ID__c from Account Where RecordTypeId = '01211000000bmnvAAA' ]; 
    list<Purchase_Order__c> myPurchase_Orders = new list<Purchase_Order__c>();
    myPurchase_Orders = [Select ID, Name, Supplier__c from Purchase_Order__c Where Supplier__c =];
    map<id,string>myAMap = new map<id,string>();
    //if Account.Recordtype is supplier 
    for ( Account a : myAccounts ){
    //Here putting account Id and name to map
    myAMap.put(a.ID, a.Supplier_ID__c);
    } 
    for ( ID aID : myAMap.keySet() ){
    system.debug(loggingLevel.debug, myAMap.get(aID));
    }    
    */
    list<account>myAccounts = new list<account>();
    //myAccounts = [Select ID, Name, Supplier_ID__c from Account]; 
    List<String> Sup_Id = new List <String>();
    List<Purchase_Order__c> setPO = new List<Purchase_Order__c>();
    List<Line__c> listLines = new List<Line__c>();
    List<Line_Item__c> listLineItems = new List<Line_Item__c>();
    List<NCR__c> listncr = new List<NCR__c>();
    List<Vendor_Invoice__c> listVendorInvoice = new List<Vendor_Invoice__c>();
    List<Estimate_Line__c> listEstimateLine = new List<Estimate_Line__c>();
    List<cg__AccountFile__c> listAccountFile = new List<cg__AccountFile__c>();
    List<Supplier_File__c> listSupplierFile = new List<Supplier_File__c>();
    List<String> listAccount = new List<String>();
    map<id,string>myAMap = new map<id,string>();
    map<id,string>mySMap = new map<id,string>();
    Map<id, Supplier_File__c> mysfMap = new map <id, Supplier_File__c>();
    
    //trigger for loop for setting account id and supplier id from account
    for(Account acc : Trigger.new){
        //Sandbox
        //if (acc.RecordTypeId == '01211000000bmnvAAA'){
            // Production 
       if (acc.RecordTypeId == '0122R000000senPQAQ'){     
        System.debug('Account Record Type = Supplier');
        System.debug('------------->'+acc.recordTypeId);
        
        if (acc.Supplier_ID__c != null){
        
        //if Account.Recordtype is supplier 
        //for ( Account a :  ){
        //Here putting account Id and Supplier ID to map
        myAMap.put( acc.Supplier_ID__c, acc.ID);
        mySMap.put( acc.ID, acc.Supplier_ID__c);
        Sup_Id.add(acc.Supplier_ID__c);
        listAccount.add(acc.ID);

        System.debug('Supplier ID And Account ID:'+ myAMap);
        System.debug('Supplier ID: '+Sup_Id);
        }
        } 

        
    }

    //Setting Account Id To various Objects//

    //Getting all Purchase orders into a list which have a supplier id in Sup_Id
    setPO = [Select Id, Supplier__c from Purchase_Order__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: setPO:'+setPO);
    for ( Purchase_Order__c po : setPO ){
            
            // setting the Account id to Account__c in Purchase order
            po.Account__c= myAMap.get(po.Supplier__c);
            System.debug('Trigger: Added Account ID to PO: '+po.Account__c);
        }

    update setPO;


    //map<id,string>myAccMap = new map<id,string>();
    //Lines update
    listLines = [Select Id, Supplier__c from Line__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: listLines:'+listLines);
    for ( Line__c ll : listLines ){
            
            ll.Account__c= myAMap.get(ll.Supplier__c);
            System.debug('Trigger: Added Account ID to Line: '+ll.Account__c);
        }

    update listLines;

    //List Line item update
    listLineItems = [Select Id, Supplier__c from Line_Item__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: listLineItems:'+listLineItems);
    for ( Line_Item__c lineitems : listLineItems ){
            
            lineitems.Account__c= myAMap.get(lineitems.Supplier__c);
            System.debug('Trigger: Added Account ID to Line Items: '+lineItems.Account__c);
        }

    update listLineItems;

    //NCR  update
    listncr = [Select Id, Supplier__c from NCR__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: listncr:'+listncr);
    for ( NCR__c ncr : listncr ){
            
            ncr.Account__c= myAMap.get(ncr.Supplier__c);
            System.debug('Trigger: Added Account ID to NCRs: ' +ncr.Account__c);
        }

    update listncr;

    //Vendor_Invoice__c update
    listVendorInvoice = [Select Id, Supplier__c from Vendor_Invoice__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: listVendorInvoice:'+listVendorInvoice);
    for ( Vendor_Invoice__c VenInv : listVendorInvoice ){
            
            VenInv.Account__c= myAMap.get(VenInv.Supplier__c);
            System.debug('Trigger: Added Account ID to Vendor Invoice: '+VenInv.Account__c);
        }

    update listVendorInvoice;


    //Estimate_Line__c update
    listEstimateLine = [Select Id, Supplier__c from Estimate_Line__c where Supplier__c in :Sup_Id];
    System.debug('Trigger: listEstimateLine:'+listEstimateLine);
    for ( Estimate_Line__c EstLine : listEstimateLine ){
            
            EstLine.Account__c= myAMap.get(EstLine.Supplier__c);
            System.debug('Trigger: Added Account ID to Vendor Invoice: '+EstLine.Account__c);
        }

    update listEstimateLine;

    //Account Supplier File update

    //Query Supplier file
    listSupplierFile = [Select Id, 
                            Content_Type__c, 
                            File_Name__c , 
                            File_Size_in_Bytes__c, 
                            Is_Latest_Version__c,
                            WIP__c, Parent__c from Supplier_File__c where Parent__c in : Sup_Id ];
                            System.debug('Trigger: Added Supplier files to list: ' + listSupplierFile);
    /*listAccountFile = [ Select Id, 
                            cg__Content_Type__c,
                            cg__File_Name__c,
                            cg__File_Size_in_Bytes__c,
                            cg__Is_Latest_Version__c,
                            cg__WIP__c from cg__AccountFile__c where cg__Account__c in : listAccount ];

                            */

    for (Supplier_File__c supFile : listSupplierFile){
        //mysfMap.put(supFile.Parent__c, supFile);
            cg__AccountFile__c accFile          = new cg__AccountFile__c();
            accFile.cg__Content_Type__c         = supFile.Content_Type__c;
            accFile.cg__File_Name__c            = supFile.File_Name__c;
            accFile.cg__File_Size_in_Bytes__c   = supFile.File_Size_in_Bytes__c;
            accFile.cg__Is_Latest_Version__c    = supFile.Is_Latest_Version__c;
            accFile.cg__WIP__c                  = supFile.WIP__c;
            accFile.cg__Account__c              = myAMap.get(supFile.Parent__c);

            listAccountFile.add(accFile);



    }
    insert listAccountFile;
    System.debug('Trigger: List AccountFile inserted: '+listAccountFile);
    /*
    for ( cg__AccountFile__c accFile : listAccountFile ){
            
            Supplier_File__c tempSF = new Supplier_File__c();
            //mySMap.get(accFile.Parent__c); 
            tempSF = mysfMap.get(mySMap.get(accFile.cg__Account__c));
            accFile.cg__Content_Type__c         = tempSF.Content_Type__c;
            accFile.cg__File_Name__c            = tempSF.File_Name__c;
            accFile.cg__File_Size_in_Bytes__c   = tempSF.File_Size_in_Bytes__c;
            accFile.cg__Is_Latest_Version__c    = tempSF.Is_Latest_Version__c;
            accFile.cg__WIP__c                  = tempSF.WIP__c;

            listAccountFile.add(accFile);
            insert listAccountFile;

            //EstLine.Account__c= myAMap.get(EstLine.Supplier__c);
            System.debug('Trigger: Added Supplier File values  to Account File: '+ listAccountFile);
        }
    */
    
    //query 

    // for updating Account file: 
    //get all supplier files which ahve the parent = supplier id into ListSupplierFile
    //for each supplier file in List supplier file: af. content type = supplier file .something


    
    //Required fields
    //listAccountFile   listSupplierFile
    
    //Object : Supplier_File__c

    //Content_Type__c
    //File_Name__c
    //File_Size_in_Bytes__c
    //Is_Latest_Version__c
    //WIP__c

    //Object  : cg__AccountFile__c
    

    //cg__Content_Type__c
    //cg__File_Name__c
    //cg__File_Size_in_Bytes__c
    //cg__Is_Latest_Version__c
    //cg__WIP__c



//where Supplier__c in :Sup_Id



    
    //get supplier ID to map(supplier id, account id)
    //6 queries: { Set  select id from Custom Line_Item__c where supplier id in set)}
    //Custom NCR__cs associated with Supplier: Purchase orders, Contacts, Lines. Line items, NCR's, Vendor Performance and Estimate Lines
    // for set 2 {Custom NCR__c.account id= map.get supplier.id}
    //update custom NCR__c;

    


 
}