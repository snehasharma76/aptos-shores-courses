# Understanding Constants in Move

Constants provide named immutable values in Move modules and scripts. They are declared using the `const` keyword.

**Syntax:**
```
const  <NAME>:  <TYPE>  =  <EXPRESSION>;
```
**Example:**
```
const MAX_VALUE: u64 = 100;
```
**Naming Conventions**

Constants have specific naming rules in Move:
- The name must start with an uppercase letter A-Z.
- After the first letter, you can use underscores _, lowercase letters a-z, uppercase letters A-Z, and numbers 0-9.

For example, these constant names are valid:

```move
const MAX_VALUE: u64 = 100; // This convention is called Snake Casing
const MinBalance: u64 = 10; // This convention  is called Camel Casing
const E_InvalidIndex: u128 = 1000000; // This convention  is used to represent error codes.
```
But these would be invalid:

```move
const myVariable: u64 = 100; // No lowercase first
const _start: bool = true; // No underscore first
const 1st: u8 = 10; // No numbers first
```
 
**Programming Tip💡**: - Give constants clear meaningful names representing their purpose for easier understanding.

---
It is time for you to declare a constant `Min_tress` of type `u8` and assign a value 20 to it.
