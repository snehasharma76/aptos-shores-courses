# Using Address in Move

The **`address`** is a built-in type in Move that is used to represent locations (sometimes called accounts) in global storage.


## Addresses and Their Syntax

Addresses come in two flavors, named or numerical. The syntax for a named address follows the same rules for any named identifier in Move.

The syntax of a numerical address is not restricted to hex-encoded values, and any valid **`u256`** numerical value can be used as an address value,
 e.g., **`42`** , **`0xCAFE`** , and **`2021`**  are all valid numerical address literals.


Named addresses are a feature that allow identifiers to be used in place of numerical values in any spot where addresses are used

Eg: let a1: address = @0x1; // shorthand for 0x0000000000000000000000000000000000000000000000000000000000000001

---

Now it's your turn, let's set the location of your Island..... So we need to add a shore_location variable of type address to the Move my_shore module.