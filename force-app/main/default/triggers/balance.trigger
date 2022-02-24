trigger balance on customerinfo1__c (before update, before insert) {
    for(customerinfo1__c obj : Trigger.New)
    {
        Integer dtDate = Date.valueOf(obj.accountopeningdate__c).year() ;
        System.debug(dtDate);
		if(dtDate == 2022)
			{
			
                if(obj.Balance__c>10000 && obj.Balance__c<100000)
                {
                    obj.comments__c = 'you are Silver Customer.Please contact branch for new offers especially for you';
                     Messaging.SingleEmailMessage bye = new Messaging.SingleEmailMessage();
                    List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
                    List<String> sendTo = new List<String>();
                    sendTo.add('pranithamukkamala30@gmail.com');
                     bye.setToAddresses(sendTo);
 					bye.setSubject('Your contact detail are added'); 
 					 bye.setHtmlBody(obj.comments__c);
                    mails.add(bye);
 					Messaging.sendEmail(mails);
                }   
                else if(obj.Balance__c>100000 && obj.Balance__c<1000000)
                {
                    obj.comments__c = 'you are gold Customer.Please contact branch for new offers especially for you';
                    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
                    List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
                    List<String> sendTo = new List<String>();
                    sendTo.add('pranithamukkamala30@gmail.com');
                     mail.setToAddresses(sendTo);
 					mail.setSubject('Your contact detail are added'); 
 					 mail.setHtmlBody(obj.comments__c);
                    mails.add(mail);
 					Messaging.sendEmail(mails);
                    
                }
                else if(obj.Balance__c>1000000)
                {
                    obj.comments__c = 'you are platinum Customer.Please contact branch for new offers especially for you';
                    Messaging.SingleEmailMessage good = new Messaging.SingleEmailMessage();
                    List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
                    List<String> sendTo = new List<String>();
                    sendTo.add('pranithamukkamala30@gmail.com');
                    good.setToAddresses(sendTo);
 					good.setSubject('Your contact detail are added'); 
 					good.setHtmlBody(obj.comments__c);
                    mails.add(good);
 					Messaging.sendEmail(mails);
                }
			


			}
    }
    
}