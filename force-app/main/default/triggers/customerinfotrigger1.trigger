trigger customerinfotrigger1 on customerinfo1__c (after insert) {
    
    for(customerinfo1__c obj: Trigger.old){
        if(obj.Senior_Citizen__c == 'yes'){
            obj.Rate_of_Interest__c = 6.0;
        }
    }

}