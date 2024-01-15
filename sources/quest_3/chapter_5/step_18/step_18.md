### Understanding Abort in Move

The Abort mechanism in Move is a powerful feature that allows safe termination of execution and reverting state changes. Here are some key points:

- **Explicit Trigger:** Abort can be triggered explicitly using the `abort` instruction. This instruction takes an error code as an argument.
- **Runtime Errors:** Certain runtime errors, such as index out of bounds, can also trigger an abort. These errors occur automatically during execution.
- **State Reversion:** When an abort occurs, any changes made to the global state are reverted. This ensures that the transaction fails, and the state remains consistent.
- **Error Code:** The error code provided in the abort instruction is surfaced to the client or caller as a transaction error. This allows for more detailed error handling.
- **Preventing Invalid State:** Abort is a crucial tool for preventing invalid or undesirable states from being persisted in the blockchain.


#### Example: Explicit Abort

```move
fun div (num1: u64, num2: u64){
    if (num1 == 0 || num2 == 0)
    abort 0 ;
    let divide = a/b;
   
}
```
In this example 
- The function `div` takes two input `num1` and `num2` of type `u64`.
- It checks whether any of these inputs has value 0, it will abort the excution with error code 0. 
- If it does not abort it will move to the next line of execution and perform the division operation.

---

It is time for you to decide whether to abort the learning process or not. Oh wait! that option does not exist 😂 So go experiment with what you just learned right now. Create a function `add_member` which takes a parameter `h` for mutable reference to the struct `House` in the fucntion body write the code to check the condition if `no_of_members >= 4` the execution will abort with code `0` else it will increment the `no_of_members` by 1.