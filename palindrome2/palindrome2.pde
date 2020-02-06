import java.text.Normalizer;


//on nettoie le mot à tester de tous les caractères spéciaux, espaces et on le rend case insensitive
String cleanWord(String word) {
word = Normalizer.normalize(word, Normalizer.Form.NFD);
word = word.toLowerCase();
word = word.replaceAll("[\\p{InCombiningDiacriticalMarks}]", "");
word = word.replaceAll("\\s+", "");

return word;
}
  
boolean isPalindrome(String word) { //<>//
  word = cleanWord(word);                                 //on récupère le mot nettoyé
  int taille = word.length();
  
  if(taille <= 1) {                                       //Si le mot est de 0 ou 1 caractère, c'est forcément un palindrome
    return true;
    
  } else if(word.charAt(0) == word.charAt(taille - 1)) { //On teste si les caractères aux deux extremités de la chaîne sont identiques //<>//
    return isPalindrome(word.substring(1, taille - 1));  // S'ils sont identiques, on rappelle la fonction en retranchant les deux caractères aux extremités //<>//
    
  } else {
    return false;                                        //Dès que deux caractères analysés sont différents, la fonction renvoie "faux"
  }
} 

void setup() {
  String word = "élu par cette Crapule";                //Mot à tester
  
  if(isPalindrome(word)) {
    println("Le texte '" + word + "' est un palindrome");
  } else {
      println("Le texte '" + word + "' n'est pas un palindrome");
    }
}
