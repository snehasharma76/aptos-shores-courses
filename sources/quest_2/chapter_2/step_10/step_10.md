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


🤔 You might have noticed the variable `house` is written as `_house` . Do you know why?

**Note:** While you try to compile the newly created function you will recieve a warning saying `Unused assignment or binding for local 'house'. Consider removing, replacing with '_', or prefixing with '_' (e.g., '_house')` 

Concept : Using `_` acknowledges that the variable is intentionally not being used. We will talk more about this in the later chapter once we start dealing with local variables.


---
Let us play around with the function a little more, create a function named `init_house` with parameters to initialise the house struct. We will cover signers in detail shortly.


