
# Using Address in Move

The term **`address`** is a native category in Move, employed to depict positions, often referred to as accounts, within the overall storage system.
Interestingly an address value is a 256-bit (32-byte) identifier and two things can be stored in an address: `Modules` and `Resources`.

Note: We will be discussing about the `Resources` in the later sections whereas `Modules` has already been covered.

## Types of Addresses

1.  **Two Types of Addresses:** There are two kinds of these special codes: named and numerical.

    -   **Named Address Example:** Think of it like giving a name to a place. Just like we call our house by a name, in programming, we can name a location. For example, we can say `my_house: address = @0x1;`.

    -   **Numerical Address Example:** Instead of a name, we can use regular numbers like 42, 0xCAFE, or 2021 to represent a location.

2.  **Using Named Addresses:** We can use the named addresses wherever we need to mention a location. For instance, `let a1: address = @0x1;` is a quick way of saying the location is `0x0000000000000000000000000000000000000000000000000000000000000001`.

----------
Now, let's focus on your island's location. To do this, we must include a `shore_location` variable of the address type in the Move `my_shore` module.





