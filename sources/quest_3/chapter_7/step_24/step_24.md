### Understanding Loop in Move

Loop expressions provide a way to execute a block of code repeatedly in Move.

-   **Execution:** Each iteration of the loop runs the code block.
-   **Termination:** The loop continues until a `break` statement is reached.
-   **Skipping Iterations:** `continue` skips to the next iteration.
-   **Local Variables:** Variables inside the loop are local to each iteration.

#### Example:
```
let i = 0;
loop {
  i = i + 1;
  if (i >= 10) {
    break;
  };
  continue; // skip to next iteration
};
```
This simple loop increments `i` until it reaches 10.

---

  It is time for you to implement concepts around vector that we have previously learnt and implement loop. Create a function `print_dailyVisitors_usingloop` which takes a parameter `data` that acts as an immutable reference to `GlobalData` struct. Then declare a variable `vec` of type `vector<u64>` that stores `daily_visitors`. Declare another variable `len` that stores the length of the previously declared vector `vec`. Take a counter variable `i` and initialize it to 0, this variable will be used as a counter variable in the loop. Inside the loop body check if `i < len` then continue then check if `i>=len` then break; Also declare a variable `visitor_today` to store the value from vector `vec` at a given index `i` by using 
  `vector::borrow(&vector, index)` . Print `visitor_today` and then increment the counter variable `i` by 1.