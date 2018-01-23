public class MyContactListController {
    @AuraEnabled
    public static List<Contact> getContacts() {
        return [Select Id, Name, Email, Title, Phone From Contact];
    }

    @AuraEnabled
    public static String changeStates(String state) {
	    Cache.Session.getPartition('indirect').put('state', state);
        return        (String) Cache.Session.getPartition('indirect').get('state');
    }

    @AuraEnabled
    public static String getStates(String state) {
	    if (!Cache.Session.getPartition('indirect').contains('state')) 
		    Cache.Session.getPartition('indirect').put('state', 'default');
        return        (String) Cache.Session.getPartition('indirect').get('state');
    }
}