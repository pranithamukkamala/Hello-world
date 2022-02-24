@isTest
public class Goverlimit 
{
    @isTest
    static void testme()
    {
		System.debug('Gov before starttest :'+ Limits.getDmlStatements());
    	Test.startTest();
    	for(Integer a=0;a<15;a++)
    	{
        	insert new Account(Name = 'prani'+a);
    	}
    	System.debug('Gov while :' + Limits.getDmlStatements());
    	Test.stopTest();
    	System.debug('Gov After :' + Limits.getDmlStatements());
	}
}