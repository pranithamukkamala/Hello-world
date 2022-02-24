trigger saltrigger on customerinfo1__c (before insert, before update) {
    
    //System.debug(Trigger.isInsert);
if(Trigger.isInsert)
{
for(customerinfo1__c ob: Trigger.New)
ob.Name = 'Mr/Mrs ' + ob.Name;
}

if(Trigger.isUpdate)
{
for(customerinfo1__c ob: Trigger.New)
{
if(ob.Name.contains('Mr/Mrs '))
continue;
ob.Name = 'Mr/Mrs ' + ob.Name;
}

}
}