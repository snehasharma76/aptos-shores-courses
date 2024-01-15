### Understanding Signer in Move

In Move, a signer is like a key that authorizes transactions or operations on the blockchain. Here's a simple breakdown:

- **Representation:** A signer is a type indicating who has the authority to control a resource. It's defined with an address field:

  ```move
  struct signer has drop {
      a: address
  }
  ```
- **Signer Operations:**
  - `signer::address_of(&signer)`: Gets the address from the signer.
  - `signer::borrow_address(&signer)`: Gets a reference to the address.
- **Transaction Signers:** The signers of a transaction are specified when the transaction is submitted to the Move blockchain.
- **Function Arguments:** Functions in Move can take signer arguments, allowing them to check who is calling them. This is crucial for enforcing permissions and authorization.

#### Example: Using Signer in Move

```move
fun example(s: signer) {
        let signer_address = signer::address_of(&s);
        assert!(signer_address == @0x42, 0);
        let _caller_address = signer_address;
    }
```
In this example:
- The `example` function takes a signer argument `s`.
- It extracts the actual address from the signer using `signer::address_of`.
- The address is checked against an expected value, ensuring authorization.
- The address is then stored in a `_caller_address variable`.

---

It is your turn to play around with the code. Create a function `change_name` having three parameters `new_name` of type `String`, `data` for mutable reference of `GlobalData` struct and `s` of type `signer`. Using the assert keyword check if the address of the signer is equal to `0x42`. Then initialize a new variable `byte` of type `vector:u8` that would store the converted value of `new_name` as byte using the `to_bytes` function from `bcs` module. Also update the `island_name` by converting the `byte` into type `utf8`. 