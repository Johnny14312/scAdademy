public with sharing class newLWCController {

    @AuraEnabled
    public static void sendEmail(String toAddress, String subject, String body) {
        try {
            List<Messaging.SingleEmailMessage> emails = new List<Messaging.SingleEmailMessage>();
            System.debug('Entering Send Email Method');
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new List<String>{toAddress});
            email.setSubject(subject);
            email.setHtmlBody(body);
            emails.add(email);

            Messaging.sendEmail(emails);

            System.debug('MY APEX METHOD FIRE');

            System.debug('toAddress');
            System.debug('MY APEX METHOD toaddress');

            System.debug('subject');
            System.debug('MY APEX METHOD subject');

            System.debug('body');
            System.debug('MY APEX METHOD body');



        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }


}