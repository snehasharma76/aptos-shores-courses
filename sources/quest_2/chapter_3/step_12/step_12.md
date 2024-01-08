# Tuples in Move

Tuples in Move are immutable ordered sequences of elements. They are declared using parenthesis syntax, like `(x: u64, y: address)`. Tuples group together values of potentially different types, with the types specified after a colon.

Key points about tuples:

-   Tuples have a fixed length that cannot be changed after creation.
-   To access elements of a tuple, you use dot notation like `my_tuple.0` or `my_tuple.y`.
-   Tuples are often used for returning multiple values from functions or struct methods.

#### Example:

```
fun return_two_values(): (u64, address) {
  let x = 10;
  let y = 0xabc123;
  (x, y)
}

let (a, b) = return_two_values();
```

Tuples can also be decomposed via pattern matching to extract their element values:

```
let my_tuple = (10, 0xabc123);
let (x, y) = my_tuple;` 
```

Remember that tuples are immutable, meaning their element values cannot be changed after creation. If different values are needed, new tuples have to be created.

In summary, tuples in Move are immutable ordered sequences of different data types. They are useful for returning multiple values from functions.

---

It is your turn to code!! Define a function named `resources` to declare a `tuple` that stores the number of `food` and `logs` available.