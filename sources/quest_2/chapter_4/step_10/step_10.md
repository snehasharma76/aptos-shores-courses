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


**Note:** If a variable is not used, it must be named with a _ suffix to avoid compilation errors. 

Concept : Using `_` acknowledges that the variable is intentionally not being used. We will talk more about this in the later chapter once we start dealing with local variables.


---
Let us play around with the function a little more, create a function named init_house with parameters to initialise the house struct. The parameters are named s for the signer, as well as members and location. I'll let you guess their type! This function must initialize a house... with all its parameters!
