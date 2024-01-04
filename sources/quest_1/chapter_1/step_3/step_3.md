# Move Integer typing

The Move programming language offers a variety of unsigned integer types for precise management of numerical data. These integer types are essential for manipulating numerical values in various blockchain scenarios. Understanding these types and their use is crucial for efficient development in Move.

## **Integer types**

Move supports six unsigned integer types: **`u8`**, **`u16`**, **`u32`**, **`u64`**, **`u128`**, and **`u256`**. Each of these types has a specific range of values, from 0 to a maximum depending on the size of the type.

- **`u8`**: 8-bit unsigned integer, value range 0 to 2^8 - 1
- **`u16`**: 16-bit unsigned integer, value range 0 to 2^16 - 1
- **`u32`**: 32-bit unsigned integer, value range 0 to 2^32 - 1
- **`u64`**: 64-bit unsigned integer, value range 0 to 2^64 - 1
- **`u128`**: 128-bit unsigned integer, value range 0 to 2^128 - 1
- **`u256`**: 256-bit unsigned integer, value range 0 to 2^256 - 1

## **Numeric literals**

Literals for these types can be specified either as a sequence of digits (e.g. 112) or as hexadecimal literals (e.g. 0xFF). The type of the literal can optionally be added as a suffix (e.g. 112u8). If the type is not specified, the compiler will attempt to infer the type from the context. In the absence of clear inference, the default type is **`u64`**.

Numeric literals can be separated by underscores to improve readability (for example, 1_234_567, 1_000u128, 0xAB_CD_12_35).

If a literal is too large for the range of its specified (or inferred) type, an error is signaled.

---

Now it's your turn to add a variable to our island to find out how many trees are on it.

To do this, add a `animal` variable of type `u8` to your Move `my_shore` module.