public class StringArrayTest {
    public static String[] generateStringArray(Integer n) {
        String[] strArray = new String[n];
        for (Integer i=0; i<n; i++) {
            strArray[i] = 'Test ' + i;
        }
        return strArray;
    }
}