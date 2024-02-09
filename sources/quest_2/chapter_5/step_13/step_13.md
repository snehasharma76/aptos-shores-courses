# Mathematical Operation in Move

#### Arithmetic Operators

Move supports standard arithmetic operators for both integer and decimal types like `u64`, `u128`, and `vector<u64>`:

```
let x = 10 + 5;   // Addition
let y = 25 - 10;  // Subtraction
let z = x * y;    // Multiplication
let a = x / y    // Division
```

#### Comparison Operators

Move provides operators for comparing values, applicable to both integer and decimal types:

```
let a = 10;
let b = 5;

if (a > b) {
  // do something
}
```

Comparison operators include:

-   Equals: `==`
-   Not equals: `!=`
-   Greater than: `>`
-   Greater than or equal to: `>=`
-   Less than: `<`
-   Less than or equal to: `<=`

#### Logical Operators

For boolean logic, Move supports logical operators:

```
let x = true;
let y = false;

if (x || !y) {
  // this will execute
}
```

Logical operators include:

-   Logical AND: `&&`
-   Logical OR: `||`
-   Logical NOT: `!`

This section is given for information purpose, we will see the implementation of logical operators in the upcoming chapters.

---

Playing with numbers it is! Declare a function cut_tree that increases the value of `log` variable by `5x` and decreases the value of `food` by `2x`. 
