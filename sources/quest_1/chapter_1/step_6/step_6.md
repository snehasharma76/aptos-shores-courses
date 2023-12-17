# Using Vector in Move
The **`Vector`** is a collection type that can store elements of a specific type in a sequence.
## Literals
## General Vector Literals
Vectors of any type can be created with vector literals.
| Syntax                  | Type                                | Description                            |
|-------------------------|-------------------------------------|----------------------------------------|
| `vector[]`              | `vector[]: vector<T>`               | An empty vector                        |
| `vector[e1, ..., en]`   | `vector[e1, ..., en]: vector<T>`    | A vector with n elements (of length n) |
In these cases, the type of the vector is inferred, either from the element type or from the vector's usage. If the type cannot be inferred, or simply for added clarity, the type can be specified explicitly:
- `vector<T>[]: vector<T>`: An empty vector of type `vector<T>`, where `T` is any single, non-reference type.
- `vector<T>[e1, ..., en]: vector<T>`: A vector with `n` elements (of length `n`) of type `vector<T>`, where `e_i: T` such that `0 < i <= n` and `n > 0`.
# Vector<u8> Literals
A common use-case for vectors in Move is to represent "byte arrays," which are represented with `vector<u8>`. These values are often used for cryptographic purposes, such as a public key or a hash result. Specific syntax is provided to make these values more readable, as opposed to having to use `vector[]` where each individual `u8` value is specified in numeric form.
## Byte Strings
Byte strings are quoted string literals prefixed by a `b`, e.g. `b"Hello!\n"`.
These are ASCII encoded strings that allow for escape sequences. Currently, the supported escape sequences are:
- `\n`: New line (or Line feed)
- `\r`: Carriage return
- `\t`: Tab
- `\\`: Backslash
- `\0`: Null
- `\"`: Quote
- `\xHH`: Hex escape, inserts the hex byte sequence HH

## Hex Strings
Hex strings are quoted string literals prefixed by an `x`, e.g. `x"48656C6C6F210A"`.
Each byte pair, ranging from 00 to FF, is interpreted as a hex-encoded `u8` value. So, each byte pair corresponds to a single entry in the resulting `vector<u8>`.

--- 

Now it's your turn, let's add more trees to your Island....So we need to add `nb_trees` variable of type `vector<u8>` to the Move `my_shore` module. (edited) 