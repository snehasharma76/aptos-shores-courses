# **Typage des Entiers en Move**

Le langage de programmation Move offre une variété de types d'entiers non signés pour une gestion précise des données numériques. Ces types d'entiers sont essentiels pour manipuler des valeurs numériques dans divers scénarios de la blockchain. Comprendre ces types et leur utilisation est crucial pour le développement efficace en Move.

## **Les Types d'Entiers**

Move supporte six types d'entiers non signés : **`u8`**, **`u16`**, **`u32`**, **`u64`**, **`u128`**, et **`u256`**. Chacun de ces types a une plage de valeurs spécifique, allant de 0 à un maximum dépendant de la taille du type.

- **`u8`** : Entier non signé de 8 bits, plage de valeurs de 0 à 2^8 - 1
- **`u16`** : Entier non signé de 16 bits, plage de valeurs de 0 à 2^16 - 1
- **`u32`** : Entier non signé de 32 bits, plage de valeurs de 0 à 2^32 - 1
- **`u64`** : Entier non signé de 64 bits, plage de valeurs de 0 à 2^64 - 1
- **`u128`** : Entier non signé de 128 bits, plage de valeurs de 0 à 2^128 - 1
- **`u256`** : Entier non signé de 256 bits, plage de valeurs de 0 à 2^256 - 1

## **Littéraux Numériques**

Les littéraux pour ces types peuvent être spécifiés soit en tant que séquence de chiffres (par exemple, 112) ou en tant que littéraux hexadécimaux (par exemple, 0xFF). Le type du littéral peut être optionnellement ajouté comme suffixe (par exemple, 112u8). Si le type n'est pas spécifié, le compilateur tentera d'inférer le type à partir du contexte. En l'absence d'inférence claire, le type par défaut est **`u64`**.

Les littéraux numériques peuvent être séparés par des underscores pour améliorer la lisibilité (par exemple, 1_234_567, 1_000u128, 0xAB_CD_12_35).

Si un littéral est trop grand pour la plage de son type spécifié (ou inféré), une erreur est signalée.

---

À ton tour, nous allons ajouter une variable à notre île pour savoir combien d'arbre se trouve dessus. 

Pour ce faire, ajoute une variable `nb_trees` de type `u8` à ton module Move `my_shore`.