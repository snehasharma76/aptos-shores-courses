# **Utilisation des Booléens en Move**

Le type **`bool`** est essentiel dans tout langage de programmation, y compris Move. Comprendre comment utiliser les valeurs booléennes et les opérations logiques est crucial pour le contrôle du flux du programme.

## **Les Littéraux Booléens**

Les littéraux pour **`bool`** sont simplement **`true`** et **`false`**.

## **Opérations Logiques**

Move supporte trois opérations logiques principales pour le type **`bool`** :

- **`&&`** : un ET logique à court-circuit (short-circuiting logical and)
- **`||`** : un OU logique à court-circuit (short-circuiting logical or)
- **`!`** : une négation logique (logical negation)

## **Contrôle de Flux**

Les valeurs booléennes sont fréquemment utilisées dans les structures de contrôle de flux en Move, telles que :

- **`if (bool) { ... }`**
- **`while (bool) { ... }`**
- **`assert!(bool, u64)`**

---

À ton tour, ton île peut avoir une rivière... ou non ? Il faut donc ajouter au module Move `my_shore` une variable `has_river` de type `bool`.