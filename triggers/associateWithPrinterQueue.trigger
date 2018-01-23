trigger associateWithPrinterQueue on User (after update, after insert) {
    //if (department = 'Printers', isActive, not a Queue member)  create QueueMember;
    try {
        final Group[] pq = [select ID from group where name='Printers Queue' and type='Queue' limit 1];
        if (pq.size() ==0) {
            System.debug('Error: Printers Queue does not exist! Please create queue first by visiting \"setup/queue\"');
            return;
        }
        
        ID pqID = pq[0].ID;      
        for (User u : Trigger.new) {
            GroupMember[] gms = [select ID from GroupMember where GroupID =: pqID and UserOrGroupID =: u.ID];
            if (u.department.equalsIgnoreCase('Printers') && u.isActive) {
                //add to queue
               if (gms.size() == 0) {
                   GroupMember um = new GroupMember(GroupId = pqID, UserOrGroupId = u.ID);
                   insert um;
                   System.debug('added to printer queue: ' + u.Name);
               }
            }
            else  if (gms.size() > 0) {
                //remove from queue
                Database.delete(gms);
                System.debug('removed from printer queue: ' + gms.size() + ' user; one of name is '+ u.Name);
            }
            else {
                //do nothing
            }
        }
    } catch(Exception t) {
        System.debug(t);
    }
}