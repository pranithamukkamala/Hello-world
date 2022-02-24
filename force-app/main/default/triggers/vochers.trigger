trigger vochers on customerinfo1__c (before insert)
{
    for(customerinfo1__c obj:Trigger.New)
    {
        if(obj.Type_of_account__c == 'Salary')
        {
            Integer IntrandomNumber = Integer.valueof((Math.random() * 1000));
            obj.Balance__c = obj.Balance__c + 50;
            obj.comments__c = 'you have won a voucher' + IntrandomNumber;
        }
    }

}