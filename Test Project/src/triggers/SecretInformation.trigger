trigger SecretInformation on Case (after insert, before update) {
    String childCaseSubject = 'Warning Parent case may contain secret info';
    //String keyword1 = keyword;
    //Add the secret info to a list 
        // Step 1: Create a collection containing each of oour secret keywords
        Set<String> secretKeywords = new Set<String>();
        secretKeywords.add('Credit Card');
        secretKeywords.add('SSN');
        secretKeywords.add('Social Security Number');
        secretKeywords.add('Passport');
        secretKeywords.add('Bodyweight');

        //Set<String> secretKeywordsFound = new Set<String>();
        //secretKeywordsFound.add(keyword1);

    
    list<Case> caseswithSecretInfo = new List<Case>();

        for (Case myCase : Trigger.new){
        //Step 2: Check to see of our case contains any of the secret keyowords
        if( myCase.Subject != childCaseSubject) {
            for ( string keyword : secretKeywords){
            
            if( myCase.description != null && myCase.description.containsIgnoreCase(keyword)){
                caseswithSecretInfo.add(myCase);
                System.debug('Case' + myCase.id + 'include secret keyword' + keyword);
                //break;
                }
        //break;
              }
        }
        
        //Step 3: if our case contains any of the secret keywords, a child case needs to be created. 
        for (Case casewithSecretInfo : caseswithSecretInfo) {

            Case childCase                             = new Case();
            childCase.subject                          = childCaseSubject;
            childCase.ParentId                         = casewithSecretInfo.id;
            childCase.IsEscalated                      = true;
            childCase.Priority                         = 'High';
            childCase.description                      = 'At least contains one of the following keywords' + secretKeywords;
            childCase.Product_Purchase_Date__c         = Date.today();
            //childCase.CreatedDate                      = Date.today();
            childCase.Product_Total_Warranty_Days__c   = 15;
           childCase.Product_Has_Extended_Warranty__c  = true;
           
            insert childCase;
            System.debug(childCase.id);

            System.debug(myCase.id);


        }
        
        // idea for adding keywords found in description
        //create a list/set and a loop which assigns all the keywords found 
        //then add the list/set to the description string 
    
    //break;


    }

        //List<String> competitor = new List<String>();



    // Stage 1
    //check case description for the following words
    // Credit Card, SSN / Social security number, Passport 

    //Stage 2
    //if the case has secret info in it 
    // create a case
    // describe the issue
    //escalate it
    //mark it as high priority
}