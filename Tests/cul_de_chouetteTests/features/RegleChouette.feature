Feature: Règle de la Chouette
2 dés identiques
La Chouette a pour valeur le chiffre des deux dés identiques. Le joueur qui a lancé les dés gagne les points correspondant au carré de la Chouette

Scenario: La Chouette a pour valeur le chiffre des deux dés identiques 2 - 2 - 3
Given Un joueur lance les dés
When son tirage est 2, 2, 3
Then il obtient une chouette de 2
And il obtient 4 points

Scenario: La Chouette a pour valeur le chiffre des deux dés identiques 5 - 5 - 1
Given Un joueur lance les dés
When son tirage est 5, 5, 1
Then il obtient une chouette de 5
And il obtient 25 points

Scenario: La Chouette a pour valeur le chiffre des deux dés identiques 1 - 5 - 5
Given Un joueur lance les dés
When son tirage est 1, 5, 5
Then il obtient une chouette de 5
And il obtient 25 points
