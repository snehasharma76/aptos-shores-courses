### Understanding Generic Types in Move

In Move, generic types offer flexibility by allowing definitions to work with various concrete types. Here's a breakdown:

#### Declaration:

```
struct Box<T> {
    value: T
}
```

Here, `Box` is defined as a generic struct with a type parameter `T`. This means `Box` can hold data of any type in struct member `value`.

#### Usage:

```
struct Box<T> {
    value: T
}
fun test() {

    //let us assign a u64 value to Box<T>

    let num_box: Box<u64> = Box{
       value: 10 //Here we are assigning a u64 to "value"
    };

    //let us now try assigning a bool to Box<T>

    let bool_box: Box<bool> = Box{
        value: true //Here we are assigning a bool to "value"
    };
}
```

In this example:
-   `num_box` holds a `u64` value.
-   `bool_box` holds a `bool` value.


#### Benefits:
-   **Reusability:** Generic types can be used with different concrete types without the need for duplicate definitions.
-   **Flexibility:** Functions and data structures can handle multiple types instead of being restricted to one fixed type.
-   **Abstraction:** Generic types allow hiding unnecessary details of the underlying data type. (edited) 

---
It is now your turn to experiment with generics struct. Create a VisitorInfo generic struct with ID, Age, as members. 