trigger duplicate on customerinfo1__c (before insert)
{
    
    for(customerinfo1__c obj : Trigger.New)
    {
        /*if(obj.Name.contains(obj.Name))
        {
            obj.Name.addError('Account with same name is existing');
        }*/
    List <customerinfo1__c> ob = [select Name from customerinfo1__c where Name = :obj.Name];
    if(ob.size()>0)
    {
        obj.Name.addError('Accounbt with same name already existing');
    }
    
    }
    

}