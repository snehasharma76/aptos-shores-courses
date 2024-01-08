# Using Vector in Move

**What is a Vector?**

Think of a `vector` like a list that can hold items in a specific order of specific type.

**Creating Vectors:** We can create variety of vectors for example:

 -   An empty vector: `vector[]` or `vector<T>[]`, where `T` is any non-reference type.

-   A vector with elements: `vector[e1, ..., en]` or `vector<T>[e1, ..., en]`, where `n` is the number of elements.

 **Special Case: Byte Arrays with `vector<u8>`:**

-   Vectors of bytes are common, often used for things like public keys or hash results. We are particularly talking about two different categories `Byte Strings` and `Hex Strings`.

    -   Byte strings: Quoted string literals with a `b` prefix, like `b"Hello!\n"`.

    -   Hex strings: Quoted string literals with an `x` prefix, like `x"48656C6C6F210A"`. Each pair of characters represents a byte in hexadecimal form. 

Wondering what `\n` in the previous example is 👀 ? 

These are nothing but escape sequences that are used along with these byte/hex strings for representation purposes.

 A few other example of escape Sequences in Byte Strings are - 
-   `\n`: New line
-   `\r`: Carriage return
-   `\t`: Tab
-   `\xHH`: Hex escape, where `HH` represents a hexadecimal byte, etc.


--- 

Now it's your turn, let's add more daily_visitors to your Island....So we need to add `daily_visitors` variable of type `vector<u64>` to the Move `my_shore` module.