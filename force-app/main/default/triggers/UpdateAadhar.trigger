trigger UpdateAadhar on Aadhar__c (after update) 
{
 for(Aadhar__c ad:Trigger.old)
 {
 if(ad.Salary__c > 5000)
 {

 ad.Address__c = 'Hyderabad';
 update ad;
 
 }
  }

}