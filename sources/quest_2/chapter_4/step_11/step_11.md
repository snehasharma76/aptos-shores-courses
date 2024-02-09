# References in Move

In Move, there are two types of references:

1.  **Immutable Reference (&):** It means you can look at the value but can't change it. Imagine it as a read-only view.
    
2.  **Mutable Reference (&mut):** It allows modifications. You can make changes through this reference, like a read-write access.
    

### Reference Operators:

In Move, when you see `e: T`, it means "expression e has type T".

The `&e.f` and `&mut e.f` operators are used to create references in a struct or extend an existing one:

```
let s = S { f: 10 };
let f_ref1: &u64 = &s.f;   // Works (Immutable reference)
let s_ref: &S = &s;
let f_ref2: &u64 = &s_ref.f // Also works (Immutable reference)
```

If you have a struct with multiple fields, you can create a reference to a field as long as both structs are in the same module:

```
struct A { b: B }
struct B { c : u64 }
fun f(a: &A): &u64 {
  &a.b.c
}
```
However, remember that references to references are not allowed:

```
let x = 7;
let y: &u64 = &x;
let z: &&u64 = &y; // Will not compile
```
You can't have a reference pointing to another reference. Each reference has a direct link to the original data.

---

It is your turn to tweak the code. Declare a function `add_trees` to add a `mutable reference` to the GlobalData struct which will increase the number of trees `nb_tree` by `1`.