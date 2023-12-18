# Using Signer in Move

 **What is a Signer?**

    -   A `signer` is like a special permission slip on a blockchain. It represents the authority over something valuable, like money or assets.

    -   When we talk about a `signer` in programming, it means indicating which account or entity has the authority to perform a specific action on the blockchain.

 **How is it Implemented?**

    -   In the programming language Move, a `signer` is implemented as a structure that has an address.

    -   You can't just create a `signer` out of thin air in your code; it's something that the Move Virtual Machine (VM) creates and hands over when needed.

**Using Signer in a Script:**

    -   In a script (a set of instructions for the blockchain), you can use the `std::signer` module to perform operations on `signer` values.

    -   The `signer::address_of(&signer)` function gives you the address wrapped by the signer, and `signer::borrow_address(&signer)` gives you a reference to the address.

---

Now it's our turn to add the `signer` as a parameter to our function `shore` and check if the signer of the function `shore` is equal to address of `@0x42` using `signer::address_of(&s) == @0x42`.

---

Tip💡: You can use `assert!` keyword to perform the check condition.

If the check condition is true the function will be executed further, if not the function will return 0 and revert the transaction.






