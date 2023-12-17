# Using Signer in Move
A `signer` is a type that represents the authorization and control of a resource or asset on the blockchain. The signer type is used to indicate which account or entity is responsible for executing a particular transaction or operation on the blockchain.
You can think of the native implementation as being:
```
struct  signer has drop { a: address }
```
Signer values are special because they cannot be created via literals or instructions--only by the Move VM. Before the VM runs a script with parameters of type `signer`, it will automatically create `signer` values and pass them into the script:
```
script {
use  std::signer;
fun main(s: signer)  {
assert!(signer::address_of(&s)  ==  @my_addrx,  0);
}
}
```
### `signer` **operations:**
The `std::signer` standard library module provides two utility functions over `signer` values:
-   `signer::address_of(&signer): address` - Return the `address` wrapped by this `&signer`.
-   `signer::borrow_address(&signer): &address` - Return a reference to the `address` wrapped by this `&signer`.

---
Now it's our turn to add the `signer` as a parameter to our function `shore` and check if the signer of the function `shore` is equal to address of `@0x42` using `signer::address_of(&s) == @0x42`. 

Tip💡 You can use `assert!` keyword to perform the check condition.

If the check condition is true the function will be executed further, if not the function will return 0 and revert the transaction.







