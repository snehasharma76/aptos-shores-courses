### Understanding Type Arguments in Move

**Type Arguments Overview**

Type arguments in Move provide a way to customize generic functions and structs with specific data types. Here's how they work:

**Calling Generic Functions**

When calling a generic function, you can specify the type arguments for its type parameters using angle brackets:

```move
fun example_function() {
    let result = generic_function<bool>(true);
}
```
If you don't specify the type arguments, Move's type inference will automatically provide them.

**Using Generic Structs**

Similarly, when constructing or destructing values of generic structs, you can attach type arguments for the struct's type parameters:

```move
fun example_struct() {
    let example = ExampleStruct<bool> { value: true };
    let ExampleStruct<bool> { value } = example;
}
```
Like with functions, if you omit the type arguments, Move's type inference will infer them.

**Type Argument Mismatch**

If you specify type arguments that conflict with the actual values supplied, Move will produce an error:

```move
fun example_mismatch() {
    let result = generic_function<u64>(true); // error! true is not a u64
}

fun example_struct_mismatch() {
    let example = ExampleStruct<bool> { value: 0 }; // error! 0 is not a bool
    let ExampleStruct<address> { value } = example; // error! bool is incompatible with address
}
```
**Unused Type Parameters**

Move allows unused type parameters in struct definitions. This can be convenient for certain concepts, even if the type parameter doesn't appear in any defined fields:

```move
struct ExampleStruct<T> {
    value: u64
}
```
---
It is time you get your hands dirty with code and see how type arguments work. Follow the steps one by one. First declare a function named `createVisitorID` with parameter `info` as mutable reference for struct `VisitorInfo<u64, u64>` and `visitor_age` of type `u64`. Then declare a variable `currentID` to store current id using `info.id`. Next you need to declare a variable `nextID` of type `u64` that increments currentID by 1 and finally initialize `VisitorInfo` struct.