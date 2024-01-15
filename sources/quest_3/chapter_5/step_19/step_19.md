### Understanding Assert in Move

The assert construct in Move provides a way to validate conditions and abort execution if those conditions do not hold. Here are some key points about using assert:

- **Boolean Condition Check:** Asserts check a boolean condition, and if it evaluates to false, an abort is triggered.
- **Optional Abort Code:** Asserts take a condition to check and an optional abort code, allowing for specific error handling.
- **Validation of Assumptions:** Asserts are crucial for validating assumptions, invariants, and program state during execution.
- **State Reversion:** Unlike aborts triggered by other mechanisms, an abort on an assert does not revert any state changes. The transaction error is surfaced as usual.
- **Bug Detection:** Asserts play a significant role in catching bugs and errors during testing and development. They help ensure that the program adheres to expected conditions.

### Syntax:

```assert!(<bool expression>, <code>)```

#### Example: Using Assert in Move

```move
  fun div (num1: u64, num2: u64){
	assert!((num1 == 0 || num2 == 0),0)
	let _divide: u64 = a/b;
	}
```
In this example:

- The function `div` takes two input `num1` and `num2` of type `u64`.
- It checks whether any of these inputs has value 0, it will abort the excution with error code 0. 
- If it does not abort it will move to the next line of execution and perform the division operation.
- Note that this is the same example we used for the previous exercise that explained the `abort` concept. The one major difference is that instead of using an `if` statement the condition is directly written using `assert!` statement. 


---

We are here to save your effort, there is no new logic required just create a function `add_member` which takes a parameter `h` for mutable reference to the struct `House` like you did for the previous example and implement the condition using assert statement an leave the rest of the code similar to the previous one. 