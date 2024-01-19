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

#### Printing Structs

Custom structs can be printed if they implement `Debug` ability:

```move
struct Point has Debug { x: u64, y: u64 }
fun main() {
  let p = Point{x: 10, y: 20};
  debug::print(&p)
}
```
This prints the struct fields.

In summary, `debug::print` is your basic tool for printing in Move during testing and debugging. For production logging, emit events instead.

---
Print the welcome message for people coming to your island. Create a function `print_welcomeMessage`. Inside the function body declare a variable `welcomeMessage` containing value "Welcome to our Island". Then print `welcomeMessage`.

