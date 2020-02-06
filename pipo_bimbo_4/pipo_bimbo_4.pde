/* Enoncé: Le but est de remplacer dans une suite de chiffre tous les multiples de 3 par "pipo" et tous les multiples de 5 par "bimbo". 
Si on a la fois un multiple de 3 et de 5, on remplace par "pipo bimbo".

Exercice 1 :
écrire une fonction qui fait le remplacement en partant de 1 jusqu'à x, x étant l'argument que l'on passe à la fonction.

Exercice 2 : 
modifier la fonction pour que l'on puisse définir en plus les deux chiffres à remplacer

Exercice 3 : 
modifier la fonction de l'exo 2 pour que si l'on ne précise pas les 2 chiffres, on prend par défaut 3 et 5

Exercice 4 :
modifier la fonction 3 pour que l'on puisse préciser les mots de remplacement. SI ceux-ci ne sont pas spécifiés, on prend par défaut nos amis pipo et bimbo.
*/



//permet de remplacer les multiples de v1 par Pipo, les multiples de v2 par Bimbo, et par Pipo Bimbo lorsque les deux sont vrais.
void afficheNb(int x, int v1, int v2, String multipleA, String multipleB) {  // x = valeur max, v1 et v2 sont les multiples qu'on passera en paramètre, multipleA et multipleB snt les mots de remplacement
  int nb = 0;
  
  while(nb < x) {
  nb++;
  
  if(nb % v1 == 0 && nb % v2 == 0) {
    println(multipleA, multipleB);
  } else if(nb % v2 == 0) {
    println(multipleB);
    } else if(nb % v1 == 0) {
      println(multipleA);
      } else {
        println(nb);
        }
  } 
}

// Permet d'utiliser les valeurs 3 et 5 par défaut lorsque les paramètres ne sont pas précisés lors de l'appel de la fonction.
void afficheNb(int x, String multipleA, String multipleB) {

  afficheNb(x, 3, 5, multipleA, multipleB);
}

// Permet d'afficher par défaut les messages Pipo et Bimbo
void afficheNb(int x, int v1, int v2) {

  afficheNb(x, v1, v2, "Pipo", "Bimbo");
}

// Utilise les valeurs 3 et 5 et affiche Pipo et Bimbo par défaut.
void afficheNb(int x) {
  afficheNb(x, 3, 5, "Pipo", "Bimbo");
}

void setup() {

 afficheNb(60);
}
