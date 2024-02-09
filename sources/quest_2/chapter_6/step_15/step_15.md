Local variables are an essential part of Move code. They allow you to store data during function execution. Let's go over the key aspects of using local variables:

### Declaration

Local variables are declared with the `let` keyword. You can optionally specify the type, or let it be inferred:

```move
let my_var: u64 = 10; // Explicit type
let my_var = 10; // Implicit type
```

### Initialization 

Variables must be initialized before use. The Move compiler will enforce this:

```move 
let uninitialized_var;
let use = uninitialized_var + 10; // ERROR!
```

Only initialized variables can be used.

### Naming

Variable names can contain letters, numbers, and underscores. But they cannot start with a capital letter:

```move
let valid_name = 10; // Okay 
let InvalidName = 10; // ERROR!
```

### Multiple Declaration

You can declare multiple variables at once using a tuple:

```move
let (x, y) = (1, false);
```

### Unused Variables

Prefix with `_` to mark a variable as intentionally unused: 

```move
let _unused = 10; // No error
```

This covers the key aspects of declaring and using local variables in Move. Immutable by default, they provide safe storage during execution.

---
Now it is your turn to create a function named `resource_day` and declare two local variables `food_day` and `log_day` inside and add values to it.