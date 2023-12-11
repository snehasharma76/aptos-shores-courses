# Introduction to the modules

Move is characterized by its focus on security and flexibility. It introduces the concept of "linear resources", which ensures that digital assets cannot be implicitly copied or destroyed, but must be explicitly moved between storage spaces in the code.
This approach minimizes the risk of errors and fraud in cryptocurrency transactions. In addition, Move uses a module-based structure, enabling developers to publish code in the form of modules containing both executables and data structure declarations.
This method promotes code reuse and more efficient organization, facilitating the development of complex blockchain projects.
For beginners, learning Move offers an opportunity to familiarize themselves with a programming language that prioritizes security and precision, essential aspects in the dynamic field of blockchain technology.

Here's what a module in Move looks like:

```move
module my_address::my_module {

}
```
It's important that each module has a unique name, as this will be used to identify the module.
Here's how a module is identified:

- Each Move module is published under a specific account address on the Aptos blockchain. This address is an integral part of the module's identity.

- **Module name:** In addition to the address, each module has a unique name that distinguishes it from other modules published under the same address. By convention, a module name is written in the form "snake_case" (all letters are in lower case and words are separated by underscores).

The account address can be stored in an alias, so you don't have to rewrite it every time.

---

In turn, create a Move module named "my_shore", aliasing your address to "robinson".