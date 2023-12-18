# Basic Function in Move

Function is the only place of execution in Move. Function starts with the `fun` keyword which is followed by function name, parentheses () for arguments and curly braces {} for body.

```move
fun <function_name>(<Parameters if any>) {
// function body
}
```
Here `fun` keyword is used to declare a function in Move, let's see how to add some arguments as a part of the function,
```move
fun test(arg1: u64, arg2: 64) {
// function body
}
```
Here `arg1` of type `u64` and `arg1` of type `u64` are the two parameters declared as a part of the function.

---
In our code we have added the function `shores` with no parameters. We will cover functions in detail shortly.