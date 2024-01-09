# Error Handling in Move

Robust error handling is critical for reliable Move programs. Here are the main techniques used:

**Aborting**

- Abort with `abort` to terminate execution early
- Provide an error code to indicate the reason
- Use for unrecoverable or unexpected errors

```move
abort 0x1234 with MyErrors::INVALID_VALUE;
```

**Assertions** 

- Use `assert!(check, error_code)` to validate invariants
- Abort if assertion fails
- Helps prevent unexpected states

```move
assert!(x > 0, Error::INVALID_VALUE);
``` 

**Documentation**

- Document all error codes clearly
- Explain the meaning and causes

```move
// Returned if account balance is too low  
const E_INSUFFICIENT_BALANCE = 0x1001;
```

**Testing** 

- Write tests to validate error handling logic
- Trigger errors and check correct code is returned

Robust error handling is key for mission critical Move applications. Following these patterns helps create resilient code.

---
Let's get to work and write some code. Declare a constant named `RESOURCE_SHORTAGE` of type `u64` which will store the error code `1`also create a function named `check_resourceShortage` to check if the values mentioned in resources_avail is greater than or equal to the values given in resource_day if not, throw an error.


