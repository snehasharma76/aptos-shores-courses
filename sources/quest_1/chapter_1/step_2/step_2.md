# Introduction au Global Data dans Move

Le Global Data est un aspect fondamental dans l'utilisation du langage Move. 
Sur Aptos, le Global Data fait référence à la manière dont les données sont stockées, gérées et accessibles de manière globale sur la blockchain.
Toutes les variables dans le Global Data sont stockés sur la Blockchain, toutes les autres ne sont que des variables locales.

Voici à quoi ressemble le Global Data dans Move:

```move
module my_address::my_module {
    
    struct GlobalData has key {
        value: u64,
        value_2: u64,
    }
    
}
```

Le Global Data est défini dans un module, comme tout autre type de données. 

Nous aborderons les types comme `u64` juste après, pour l'instant, retiens que le Global Data est défini dans un module comme une structure de données
. Nous aborderons bientôt le mot clé`has key`.

À ton tour, ajoute un Global Data à ton module Move `my_shore` et ajoute la variable `tree` de type `u64` à ton Global Data qui représentera le nombre d'arbres sûr l'ile.
