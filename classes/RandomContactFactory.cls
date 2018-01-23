/**
 * YH test 3/29/2017
 **/
public class RandomContactFactory {
    static public List<Contact> generateRandomContacts (Integer total, String lastname) {
        List<Contact> listofcontacts = new List<Contact>();
		integer i = 0;
        while (i++ < total) {
            listofcontacts.add(new Contact(FirstName=string.valueOf(math.random()), LastName=lastname));
        }
        return listofcontacts;
    }
}