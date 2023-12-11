# Introduction to Global Data in Move

Global Data is a fundamental aspect of the Move language.
On Aptos, Global Data refers to the way in which data is stored, managed and accessed globally on the blockchain.
All variables in Global Data are stored on the blockchain, all others are local variables.

Here's what the Global Data looks like in Move:

```move
module my_address::my_module {

    struct GlobalData has key {
        
    }

}
```

Global Data is defined in a module, just like any other data type.
You may have noticed that Global Data has a special attribute: `has key`, which we'll cover a little later.

---

Now it's your turn to add Global Data to your Move `my_shore` module.