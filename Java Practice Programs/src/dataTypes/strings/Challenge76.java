/*
    String-2 > zipZap
    Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending with 'p'. 
    Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".

    zipZap("zipXzap") → "zpXzp"
    zipZap("zopzop") → "zpzp"
    zipZap("zzzopzop") → "zzzpzp"
*/
package dataTypes.strings;

public class Challenge76 {
    
    public String zipZap(String str){

        String finalWord = "";

        for(int i = 0; i < str.length(); i++){

            if((i <= str.length() - 3) && (str.charAt(i) == 'z') && (str.charAt(i+2) == 'p')){
                finalWord += "zp";
                i += 2;
            } else{
                finalWord += str.charAt(i);
            }
        }
        return finalWord;
    }

    public static void main(String[] args){

        Challenge76 ch = new Challenge76();

        System.out.println(ch.zipZap("zipXzap"));    // → "zpXzp"
        System.out.println(ch.zipZap("zopzop"));    // → "zpzp"
        System.out.println(ch.zipZap("zzzopzop"));    // → "zzzpzp"
    }
}
