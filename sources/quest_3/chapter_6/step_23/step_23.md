### Understanding Comments in Move

In Move, comments are simple yet crucial. Here's a quick rundown:

- **Single Line:** Start with `//`.

  ```move
  // This is a single line comment
  ```
- **Multiline:** Use `/*` and `*/`.

  ```move
  /* This is
     a multiline
     comment
  */
  ```
- **Purpose:** Comments explain code, document logic, and leave notes.

- **Best Practices:**
  - Summarize code blocks.
  - Explain complex logic.
  - Add TODOs, questions, or optimizations.
  - Mark incomplete or buggy sections.
  - Don't repeat the obvious in comments.
  - Put comments before the code they refer to.
  - Keep formatting and capitalization consistent.

#### Examples:

```move
// Check account balance before withdrawal
if (balance < amount) {
  abort 0x1234
}
/*
Known issue - algorithm fails for
input larger than 1000. Need to optimize.
*/
// TODO - add logging before release
```

**Programming Tip💡**: Well-commented code is easier to read and maintain.

---
We won't ask you to do much. Just add a multi-line comment explaining what the `build_house` function implements.