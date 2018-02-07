@RestResource(urlMapping='/repoevents/*')
global with sharing class RESTRepoEventController {

@HttpPost	
  global static String createNewRepoevent(String payload) {
     System.debug('New Event: '+payload);
   
     if(payload.length() == 0) {
     	System.debug('New Event: empty payload ');
     }
     
     Repoevent__C evt = new Repoevent__C();
     evt.original_form__c = payload;
     
     insert evt;
     System.debug(evt);
     return 'Event persisted: ' + evt.Id;
  }

}