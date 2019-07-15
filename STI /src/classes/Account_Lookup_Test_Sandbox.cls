
@isTest
public class Account_Lookup_Test_Sandbox {
        //Test Method for testing 
        static testMethod void TestMethod1(){

            Account acc1        = new Account();
            //Sandbox record type id Prospect
            acc1.recordtypeid   = '01211000000bmnqAAA';
            //Prod Record type id Prospect
            //acc1.recordtypeid   = '0122R000000senOQAQ';
            acc1.name           = 'Test';
            acc1.phone          = '1134567890';
            //acc1.Supplier_ID__c = sup.Id;
            //System.debug('Test: supId:'+sup.id);

            insert acc1;
           System.debug('Test Class: inserted acc1 for Test Method 1');
            //System.debug('Test Class: Line Account Value: '+line.Account__c);

            Contact con = new Contact();
            con.recordtypeid = '012E0000000oS31IAE';
            con.LastName       = 'Test';
            con.Phone      = '1134567890';
            con.AccountId  = acc1.id;
         
            insert con;
            System.debug('Test Class: inserted con for Test Method 1');

           Supplier__c sup   = new Supplier__c();
            sup.Name          = 'Test';
            sup.CE_Status__c  = '1';
            //sup.Account__c    = acc.id;

            insert sup;
            System.debug('Test Class: Inserted Supplier Object for Test Method 1');

            // Supplier Files

            //Content Type
            //File Name
            //WIP
            //File size

            Supplier_File__c supFile = new Supplier_File__c();

            supFile.Content_Type__c           = 'application/pdf';
            supFile.File_Name__c              = 'ADVANCE.pdf';
            supFile.File_Size_in_Bytes__c     = 722965;
            supFile.Is_Latest_Version__c      =  true;
            supFile.WIP__c                    = false;
            supFile.Parent__c                 = sup.Id;

            insert supFile;


            //project
            //record type : industrial services project
            //Status = active
            //

            Project__c pro   = new Project__c();
            pro.Name         = 'Test';
            pro.RecordTypeId = '01244000000RbpHAAS';
            pro.Status__c    = 'Active';
            
            insert pro;
            System.debug('Test Class: Inserted Project Object for Test Method 1');

            Purchase_Order__c PO   = new Purchase_Order__c();
            PO.Name               =  'Test';
            PO.Supplier__c        = sup.Id;
            //PO.Project__c         = pro.Id;
            System.debug('Test ClassPO Supplier: '+ PO.Supplier__c);
            insert PO;
            System.debug('Test Class: Inserted PO Object for Test Method 1');

            Line__c line       = new Line__c();
            line.Name          = 'Test';
            line.Supplier__c   = sup.Id;
            line.Project__c    = pro.Id;

            System.debug('Test Class: Line Supplier: ' + line.Supplier__c);
            insert line;
            System.debug('Test Class: Inserted Line');
            System.debug('Test Class: Line Account Value: '+line.Account__c);

            //line items
            //Record type
            //Supplier
            //Line
            Line_Item__c li      = new Line_Item__c();
            li.RecordTypeId     = '012E0000000oSMTIA2';
            //li.Name             = 'Test';
            li.Line__c          = line.Id;
            li.Supplier__c      = sup.Id;
            li.Project_Lookup__c       = pro.Id;
            

            System.debug('Test Class: Line Item Supplier: ' + li.Supplier__c);
            insert li;
            System.debug('Test Class: Inserted Line Item');
            System.debug('Test Class: Line Item Account Value: '+li.Account__c);

            //NCR

            //Project
            //Name
            NCR__c      ncr  = new NCR__c();
            ncr.Name         = 'Test';
            ncr.Project__c   = pro.Id;
            ncr.Supplier__c  = sup.Id;

            System.debug('Test Class: NCR Supplier: ' + ncr.Supplier__c);
            insert ncr;
            System.debug('Test Class: Inserted NCR');
            System.debug('Test Class: NCR Account Value: '+ ncr.Account__c);

            //Vendor_Invoice__c
            //Name
            //Purchase order

            Vendor_Invoice__c vi  = new Vendor_Invoice__c();
            vi.Name               = 'Test';
            vi.Purchase_Order__c  = PO.Id;
            vi.Supplier__c        = sup.Id;
            
            System.debug('Test Class: Vendor Invoice Supplier: ' + vi.Supplier__c);
            insert vi;
            System.debug('Test Class: Inserted Vendor Invoice');
            System.debug('Test Class: Vendor Invoice Account Value: '+ vi.Account__c);
            

            //Estimate__c
            //Record type (Fabrication) 012E0000000DDKQIA4
            //Estimate Type
            //Estimate title
            //Account
            //Contact
            //Sti Group Company
            //Fabrication Company
            //Estimate Package recieved
            //Due Date
            //Expected Start Date

            Estimate__c est             = new Estimate__c();
            est.RecordTypeId            = '012E0000000DDKQIA4';
            est.Bid_Type__c             = 'Budget Est.';
            est.Bid_Title__c            = 'Test';
            est.Account__c              = acc1.Id;
            est.Contact__c              = con.Id;
            est.STI_Group_Company__c    = 'Fabrication';
            est.Fabrication_Category__c = 'Pipe';
            est.Bid_Package_Received__c = Date.Today();
            est.Due_Date__c             = Date.Today() + 10;
            est.Expected_Start_Date__c  = Date.today()+ 30;

            //System.debug('Test Class: Vendor Invoice Supplier: ' + vi.Supplier__c);
            insert est;
            System.debug('Test Class: Inserted Estimate');
            System.debug('Test Class: Estimate Account Value: '+ est.Account__c);

            //Estimate_Line__c
            //Record type
            //Estimate id
            //Supplier id

            Estimate_Line__c estLine         = new Estimate_Line__c();
            estLine.RecordTypeId             = '01244000000seZCAAY';
            estLine.Estimate__c              = est.Id;
            estLine.Supplier__c              = sup.Id;

            System.debug('Test Class: Estimate Line: ' + estLine.Supplier__c);
            insert estLine;
            System.debug('Test Class: Inserted Estimate Line');
            System.debug('Test Class: Estimate Line Account Value: '+ estLine.Account__c);

            Account acc        = new Account();
            //Sandbox record type id Supplier
            acc.recordtypeid   = '01211000000bmnvAAA';
            //Production record type id Supplier
            //acc.recordtypeid   = '0122R000000senPQAQ';
            acc.name           = 'Test';
            acc.phone          = '1134567890';
            acc.Supplier_ID__c = sup.Id;
            System.debug('Test: supId:'+sup.id);

            insert acc;
           System.debug('Test Class: inserted acc for Test Method 1');
            System.debug('Test Class: Line Account Value: '+line.Account__c);

           
            

        /*
          Contact con = new Contact();
          con.recordtypeid = '0121Y000001EYOHQA4';
          con.LastName       = 'Test';
          con.Phone      = '1134567890';
          con.AccountId  = acc.id;
         
           insert con;
        */
        }
        static testMethod void TestMethod2(){
        Account acc1   = new Account();
        //Record type = Prospect (Sandbox)
            acc1.recordtypeid = '01211000000bmnqAAA';
            //Record type = Prospect (Prod)
            //acc1.recordtypeid = '0122R000000senOQAQ';
            acc1.name       = 'Test';
            acc1.phone      = '1134567890';
            acc1.Type       = 'Supplier';

            insert acc1;
            System.debug('inserted acc1 for Test Method 2');
        }
        static testMethod void TestMethod3(){
        Account acc3   = new Account();
        //Record type = Supplier (Sandbox)
            acc3.recordtypeid = '01211000000bmnvAAA';
          //Production 
            //acc3.recordtypeid = '0122R000000senPQAQ';
            //0122R000000senPQAQ
            acc3.name       = 'Test';
            acc3.phone      = '1134567890';

            insert acc3;
            System.debug('inserted acc3 for Test Method 3');
        }
}
