# Using Booleans in Move

The **`bool`** type is essential in any programming language, including Move. Understanding how to use Boolean values and logical operations is crucial to controlling program flow.

## **Boolean literals**

The literals for **`bool`** are simply **`true`** and **`false`**.


## **Logical operations**


Move supports three main logical operations for the **`bool`** type:


- **`&&`**: a short-circuiting logical AND
- **`||`**: short-circuiting logical OR
- **`!`**: logical negation


## **Flow control**


Boolean values are frequently used in Move flow control structures, such as :


- **`if (bool) { ... }`**
- **`while (bool) { ... }`**
- **`assert!(bool, u64)`**


---


Now it's your turn, can your island have a river... or not? So we need to add a `has_river` variable of type `bool` to the Move `my_shore` module.