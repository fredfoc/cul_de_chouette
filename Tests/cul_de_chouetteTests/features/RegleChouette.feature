Feature: Règle de la Chouette
2 dés identiques
La Chouette a pour valeur le chiffre des deux dés identiques. Le joueur qui a lancé les dés gagne les points correspondant au carré de la Chouette

Scenario: La Chouette a pour valeur le chiffre des deux dés identiques
Given Un joueur lance les dés
When son tirage est 2, 2, 3
Then il obtient une chouette de 2
And il obtient 4 points
