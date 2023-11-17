# Introduction aux modules

Move se caractérise par sa conception axée sur la sécurité et la flexibilité. Il introduit le concept de "ressources linéaires", qui assure que les actifs numériques ne peuvent être ni copiés ni détruits implicitement, mais doivent être explicitement déplacés entre les espaces de stockage dans le code. 
Cette approche minimise les risques d'erreurs et de fraude dans les transactions de cryptomonnaies. En outre, Move utilise une structure basée sur des modules, permettant aux développeurs de publier du code sous forme de modules contenant à la fois des exécutables et des déclarations de structures de données. 
Cette méthode favorise la réutilisation du code et une organisation plus efficace, facilitant le développement de projets blockchain complexes. 
Pour les débutants, apprendre Move offre une opportunité de se familiariser avec un langage de programmation qui priorise la sécurité et la précision, des aspects essentiels dans le domaine dynamique de la technologie blockchain.

Voici à quoi ressemble un module en Move : 

```move
module my_address::my_module {

}
```
Il est important que chaque module ait un nom unique, car il sera utilisé pour identifier le module. 
Voici comment est identifié un module : 

- **Adresse de Compte :** Chaque module Move est publié sous une adresse de compte spécifique sur la blockchain Diem. Cette adresse fait partie intégrante de l'identité du module.

- **Nom du Module :** En plus de l'adresse, chaque module a un nom unique qui le distingue des autres modules publiés sous la même adresse. Par convention, le nom d'un module est écrit sous la forme "snake_case" (toutes les lettres sont en minuscules et les mots sont séparés par des tirets bas).

L'adresse du compte peut être stockée dans un alias, ce qui permet de ne pas avoir à la réécrire à chaque fois.

---

À ton tour, crée un module Move nommé "my_shore", l'alias de ton adresse est "robinson".
