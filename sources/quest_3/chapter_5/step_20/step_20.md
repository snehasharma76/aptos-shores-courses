### Understanding Signer in Move

In Move, a signer represents the account address that signs a transaction. Here are some key points about signers:

- **Transaction Signers:** The signers of a transaction are specified when the transaction is submitted to the Move blockchain.
- **Signer Type:** Inside a Move module, signers are represented by the `signer` type. This type is a resource struct that contains the address of the signer.
- **Resource Struct:** The `signer` type is a resource struct, which means it can be owned, moved, and borrowed in Move programs.
- **Function Arguments:** Functions in Move can take signer arguments, allowing them to check who is calling them. This is crucial for enforcing permissions and authorization.
- **Address Extraction:** The `signer::address_of` function is used to extract the address from a signer. This address can be further used for validation and permission checks.

#### Example: Using Signer in Move

```move
  public fun example(s: signer) {
    let signer_address = signer::address_of(&s);
    assert!(signer_address == @0x42, 0);
    let r = R { address: signer::address_of(&s) };
  }
```
In this example:
- The `example` function takes a signer argument `s`.
- It extracts the actual address from the signer using `signer::address_of`.
- The address is checked against an expected value, ensuring authorization.
- The address is then stored in a resource struct `R`.
So, in summary, signer arguments in Move allow functions to check who called them, enabling the enforcement of permissions and access control based on the signer's identity.

---

It is your turn to play around with the code. Create a function `change_name` having three parameters `new_name` of type `String`, `data` for mutable reference of `GlobalData` struct and `s` of type `signer`. Using the assert keyword check if the address of the signer is equal to `0x42`. Then initialize a new variable `byte` of type `vector:u8` that would store the converted value of `new_name` as byte using the `to_bytes` function from `bcs` module. Also update the `island_name` by converting the `byte` into type `utf8`. 