# Equality Operations in Move

Move supports two equality operations:

-   **Equal (`==`):** Returns true if operands have the same value.
-   **Not Equal (`!=`):** Returns true if operands have different values.

**Typing:** Both `==` and `!=` work only if operands are of the same type.

```
let result1 = 0 == 0;                  // true
let result2 = 1u128 == 2u128;           // false
let result3 = b"hello" != x"00";       // true

```

**Type Checking Error:** Operands must have the same type to avoid type checking errors:

```
let error1 = 1u8 == 1u128;   // ERROR!
let error2 = b"" != 0;       // ERROR!
```

**Typing with References:** Type of the reference (immutable or mutable) doesn't matter when comparing:

```
let reference1 = &0;
let reference2 = &mut 1;

let result1 = reference1 == reference2;  // false
let result2 = reference2 == reference1;  // false
let result3 = reference2 == reference2;  // true
let result4 = reference1 == reference1;  // true
```

**Restrictions:** `==` and `!=` consume the value, requiring the type to have the `drop` ability. Direct use without `drop` ability risks premature destruction:

```
module example {
    struct Coin has store { value: u64 }
    fun invalid(c1: Coin, c2: Coin) {
        c1 == c2 // ERROR! Resources would be destroyed!
    }
}
```

**Avoiding Extra Copies:** Efficiency can be improved by comparing references and avoiding unnecessary copies:

```
let vector1: vector<u8> = function_that_returns_vector();
let vector2: vector<u8> = function_that_returns_vector();
assert!(&vector1 == &vector2, 42);
```

This eliminates unnecessary copies, making the program more efficient while maintaining the same `==` efficiency.

---
Check equality in the code using previous data. Declare a function named `check_resource` in which you call the `resource_day` function assigning it to `daily_food` and `daily_log` respectively to check if the value of `food` is equal to `10` and value of `log` is not equal to `6`you have to return true if both conditions are true else return false.
    