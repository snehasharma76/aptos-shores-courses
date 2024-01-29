### Understanding Loops in Move

In Move, we have two main types of loops:

- While Loop
- For Loop

Note: We will learn about for loops in the next chapter.

#### 1. While Loop

- **Purpose:** Repeatedly executes a block of code as long as a condition is true.

- **Example:**

  ```move
  let i = 0;
  while (i < 10) {
    i = i + 1;
  };
  ```
  This code increments `i` until it reaches 10.

---
  This chapter is a tad bit lengthy. It is time for you to implement concepts around vector that we have previously learnt and implement while loop. Create a function `print_dailyVisitors_usingwhile` which takes a parameter `data` that acts as an immutable reference to `GlobalData` struct. Then declare a variable `vec` of type `vector<u64>` that stores `daily_visitors`. Declare another variable `len` that stores the length of the previously declared vector `vec`. Take a counter variable `i` and initialize it to 0, this variable will be used as a counter variable in the loop. Declare a while loop that runs from i = 0 to i<len. Inside the loop body declare a variable `visitor_today` to store the value from vector `vec` at a given index `i` by using 
  `vector::borrow(&vector, index)` and then finally print `visitor_today`.