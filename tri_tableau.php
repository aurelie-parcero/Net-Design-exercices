<!-- Soit un tableau à x dimensions, il faut que la fonction tri dans l'ordre croissant chaque élément des tableaux imbriqués, quelque soit leur type et quelque soit la profondeur du tableau.

Le tri doit être case insensitive -->

<?php
$montableau1 = ["1", "6", "8", "3", ["sonia", "ben", "Châu", "Matthieu", "Seyit", "Mathieu"], "150", "27"];
$montableau2 = ["Laurent", "Aurélie", 17, [1245, 28, 138, 4825, ["a", "b", "x", "anticonstitutionnellement"], 1], "Zied", "Ludo", "Rahma", "fabrice", "Rémy"];

ordreTriTableau($montableau2, 'decroissant');
ordreTriTableau($montableau2, 'croissant');
ordreTriTableau($montableau1, 'decroissant');
ordreTriTableau($montableau1, 'croissant');

//Fonction qui permet de choisir l'ordre de tri de la fonction triTableau
function ordreTriTableau(array $data, $value)
{
    if ($value == 'croissant') {
        print("Tableau trié par ordre croissant");
        var_dump(@triTableau($data));
    } else {
        print("Tableau trié par ordre décroissant");
        var_dump(@array_reverse(triTableau($data)));
    }
}

//Fonction de tri par ordre naturel
function triTableau(array $data)
{
    $temp = [];
    for ($i = 0; $i < count($data); $i++) {
        $type = gettype($data[$i]);
        if ($type != 'array') {
            $temp[] = $data[$i];
        } else {
            $temp[] = triTableau($data[$i]);
        }
    }
    natcasesort($temp);
    return $temp;
}
