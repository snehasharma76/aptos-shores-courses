# Strings in Move

Move does not have a native type for strings, so to use strings, you can either include the `string module` or use `vector<u8>` for storing byte strings.

#### Using the String Module

```
// Using string module
module my_addrx::Strings {
    use std::debug;
    use std::string::{String, utf8};
    
    // Function to return a string
    fun greeting(): String {
        let greet: String = utf8(b"Hello World");
        return greet;
    }
}
```

#### Using `vector<u8>` for Byte String

```
// Using vector<u8> for representing byte string
module my_addrx::Strings {
    use std::debug;
    use std::string::utf8;
    
    // Function to return a byte string
    fun greeting(): vector<u8> {
        let greet: vector<u8> = b"Hello World"; 
        return greet;
    }
}
```

In the first example, the `String` type from the string module is used to handle strings, and in the second example, `vector<u8>` is used to represent byte strings. The test functions demonstrate how to use and print these strings or byte strings in Move.

---
Go to the island and add a name to it. We have named it `SHUJU`.