/*
    String-2 > plusOut
    Given a string and a non-empty word string, return a version of the original String where 
    all chars have been replaced by pluses ("+"), except for appearances of the word string 
    which are preserved unchanged.

    plusOut("12xy34", "xy") → "++xy++"
    plusOut("12xy34", "1") → "1+++++"
    plusOut("12xy34xyabcxy", "xy") → "++xy++xy+++xy"    
*/
package dataTypes.strings;

public class Challenge75 {

    public String plusOut(String str, String word){

        String finalWord = "";
        int i = 0;

        while (i < str.length()){

            if((i <= str.length() - word.length()) && str.substring(i, i + word.length()).equals(word)){
                finalWord += word;
                i += word.length();
            } else{
                finalWord += "+";  
                i++;
            }
        }

        return finalWord;
    }

    public static void main(String[] args){

        Challenge75 ch = new Challenge75();

        System.out.println(ch.plusOut("12xy34", "xy"));      // → "++xy++"
        System.out.println(ch.plusOut("12xy34", "1"));      // → "1+++++"
        System.out.println(ch.plusOut("12xy34xyabcxy", "xy"));      //  → "++xy++xy+++xy"
    }
}
