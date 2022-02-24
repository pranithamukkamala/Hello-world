trigger Email on customerinfo1__c (before insert) {
    Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
  Messaging.SingleEmailMessage bye = new Messaging.SingleEmailMessage();
 List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
 List<String> sendTo = new List<String>();
 sendTo.add('vasu34k@gmail.com');
 sendTo.add('srinivask@dextara.com');
  bye.setToAddresses(sendTo);
 bye.setSubject('Your contact detail are added'); 
  bye.setHtmlBody('Byee');
 
 mail.setToAddresses(sendTo);
 mail.setSubject('Your contact detail are added'); 
 String body = 'Dear Srinivas,Please attend the Training... ';
 mail.setHtmlBody(body);
 mails.add(mail);
 mails.add(bye);
 Messaging.sendEmail(mails);

}