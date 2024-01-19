### Understanding Print Statement in Move

In Move, printing is straightforward and helpful for testing and debugging. Here's a breakdown:

#### Printing Strings

```move
let message = utf8(b"Hello World")
debug::print(&message);
```
#### Printing Primitive Values

```move
let x = 10;
debug::print(&x);
```
Make sure to use the `&` reference.

In summary, `debug::print` is your basic tool for printing in Move during testing and debugging. For production logging, emit events instead.

---
Print the welcome message for people coming to your island. Create a function `print_welcomeMessage`. Inside the function body declare a variable `welcomeMessage` containing value "Welcome to our Island". Then print `welcomeMessage`.

