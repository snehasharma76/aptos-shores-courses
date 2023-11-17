# Introduction au Global Data dans Move

Le Global Data est un aspect fondamental dans l'utilisation du langage Move. 
Sur Aptos, le Global Data fait référence à la manière dont les données sont stockées, gérées et accessibles de manière globale sur la blockchain.
Toutes les variables dans le Global Data sont stockés sur la Blockchain, toutes les autres ne sont que des variables locales.

Voici à quoi ressemble le Global Data dans Move:

```move
module my_address::my_module {
    
    struct GlobalData has key {
        
    }
    
}
```

Le Global Data est défini dans un module, comme tout autre type de données.
Vous avez peut-être remarqué que le Global Data a un attribut spécial : `has key`, nous aborderons ce sujet un peu plus tard.

---

À ton tour, ajoute un Global Data à ton module Move `my_shore`.
