trigger balenceinfo on customerinfo1__c (before insert) {
    
    for(customerinfo1__c hu : Trigger.new)
        if(hu.Balance__c < 10000){
            hu.Balance__c= hu.Balance__c-100;
            hu.Rate_of_Interest__c = hu.Rate_of_Interest__c-0.01;
            hu.comments__c  = 'as per bank policy you didnt mainted minimum balance,so deducting 100 rs fromn ur account'+date.today();
        }

}