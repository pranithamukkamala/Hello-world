trigger AadharTrigger on Book1__c (before insert) {
    
    for(Book1__c  a: Trigger.New) {
        a.Salary__c= 56477;
    }

}