JavaScript
---------------

Dans ce chapitre, tu vas découvrir le langage le plus hype du moment : JavaScript. Tu vas pouvoir utiliser JavaScript pour ajouter des effets à ta page. Trop stylay, non ?

* Faire le premier chapitre de la [track JavaScript de CodeCademy](https://www.codecademy.com/learn/learn-javascript). C'est une bonne introduction à comment déclarer des variables, des fonctions, etc
* Faire (à deux si possible, c'est toujours cool) le [tutoriel d'utilisation de Javascript](https://developer.mozilla.org/fr/Apprendre/Commencer_avec_le_web/Les_bases_JavaScript) de la Fondation Mozilla, afin de créer ta première page dynamique \o/
* Connaître l'équivalent de `puts`, le célèbre `console.log()` de JavaScript avec ce [petit tutoriel](https://www.alsacreations.com/astuce/lire/1436-console-javascript.html) qui explique comment ça marche.
* Enfin, découvrir [ce site merveilleux](https://www.w3schools.com/) qu'est w3schools, notamment sur [leur page d'exemples](https://www.w3schools.com/js/js_examples.asp) des fonctions en JavaScript qui permettent d'intéragir avec une page


Pimper la page Google avec du JavaScript
-----------------------------

Tu vas reprendre le projet d'hier et ajouter un peu de JavaScript pour le rendre un peu mieux.

#### 0- Mise en place

Pour ce projet, nous allons te demander de reprendre le projet de la veille, mais de le faire sur un nouveau repository Github. Ce sera plus pratique pour les corrections.

#### 1- Warmup

Reprends la page Google de la veille. Fais en sorte que quand tu arrives sur la page, les éléments centraux (logo, barre de recherche, boutons) ne sont pas encore affichés. À la place, il y aura un gros bouton "AFFICHER LES ÉLÉMENTS CENTRAUX". Quand tu cliques sur ce bouton, le bouton va disparaître, et les éléments centraux (logo, barre de recherche, boutons) vont apparaître.

#### 2- Redirection

Maintenant on va faire marcher la recherche de Google. Quand tu fais une recherche, et clique sur le bouton "Recherche Google", la page dois te rediriger vers la recherche correspondante. Par exemple si tu tappes hello world et clique sur "Recherche Google", cela doit te rediriger sur `https://www.google.fr/#q=hello+world`. Si tu tappes bonjour monde, tu iras sur `https://www.google.fr/#q=bonjour+monde`

#### 3- Popup

Une entreprise de cryptomonnaie vous propose un gros contrat : en échange d'un max de blé, vous devez afficher un pop-up de pub pour faire gagner des Bitcoin en masse. Un truc du genre "Cette technique va vous rendre riche, cliquez-ici pour gagner beaucoup d'argent". Un `.alert` peut faire l'affaire. Askip une fonction `.onClick` existe... 

#### 4- Générateur de grilles

Cet exercice est pour les champions : ne pas y arriver n'est pas grave 😉

Tu vas faire une autre page sur ton site : un générateur de grille. Une page web qui va demander à l'utilisateur la taille de la grille, et sortira une grille.

Faire une page toute nouvelle. Cette page va demander à l'utilisateur (via un alert) la taille de sa grille, un nombre de 1 à 70, que l'on appèlera N. Puis la page va afficher une carré qui contien N x N petits carrés égaux.

* Au début, fais des carrés qui ont une taille prédéterminée
* Maintenant, tous ces petits carrés doivent rentrer dans un grand carré qui rentre dans la page. Ainsi, si l'utilisateur répond qu'il veut une grille de 1 x 1, le petit carré aura la taille de width_grand_carré x heigth_grand_carré. S'il veut une grille de 3 x 3, les petits carrés auront une taille de (width_grand_carré / 3) x (heigth_grand_carré / 3), et ainsi de suite
<br>
(hint : la boucle for est ton amie)


