/*
    String-2 > wordEnds
    Given a string and a non-empty word string, return a string made of each char just before 
    and just after every appearance of the word in the string. Ignore cases where there 
    is no char before or after the word, and a char may be included twice if it is between 
    two words.

    wordEnds("abcXY123XYijk", "XY") → "c13i"
    wordEnds("XY123XY", "XY") → "13"
    wordEnds("XY1XY", "XY") → "11"
*/
package dataTypes.strings;

public class Challenge77 {
    
    public String wordEnds(String str, String word){

        String finalWord = "";
        int sLen = str.length();
        int wLen = word.length();
    
        for(int i = 0; i <= sLen - wLen; i++){

            if(str.substring(i, i+wLen).equals(word)){
                if (i > 0) {
                    finalWord += str.charAt(i - 1);
                }
                if (i + wLen < sLen) {
                    finalWord += str.charAt(i + wLen);
                }
            }
        }
        return finalWord;
    }

    public static void main(String[] args){

        Challenge77 ch = new Challenge77();

        System.out.println(ch.wordEnds("abcXY123XYijk", "XY"));  // → "c13i"
        System.out.println(ch.wordEnds("XY123XY", "XY"));        // → "13"
        System.out.println(ch.wordEnds("XY1XY", "XY"));          // → "11"
    }
}
