## 1.b

- Q: Quelles étapes (steps) sont réalisées par cette action ?
- R: Setup de python (installation des dépendances) / application de Flake8 (vérifier le style de codage) / effectuer les tests python (pytest)

- Q: Une étape est définie au minimum par 2 éléments, lesquels sont-ils et à quoi servent-ils ?
- R: le nom de l'étape permettant de l'identifier et l'action à réaliser (run) 

- Q: La première étape contient le mot-clé ‘with’, a quoi sert-il ? 
- R: Ce mot permet de spécifier certains prérequis à utiliser. Dans ce cas, cela force à utiliser la version 3.10 de Python

## 2.a
- Q: Sur l’onglet Summary d’une analyse de code, SonarCloud fournit 4 indicateurs. Quels sont-ils et quelles sont leurs utilités ?
- R: Issues (nouvelles issues et issues à remplir dans le projet), coverage (% du code testé par les tests de coverage), duplication (la quantité de code dupliqué) et New Security Hotspots (l'apparition de nouveaux points chaud en matière de sécurité, c'est à dire des bouts de code qui nécessitent une attention particulière en matière de sécurité).

- Q: À quoi sert l’indicateur Quality Gate ?
- R: à montrer si certains tests spéciaux ont été accomplis. Ces tests permettent d'indiquer si l'application est prête à sa mise en production.

https://github.com/AlexandreMaquet-HeArc/TP2_IND-LOG