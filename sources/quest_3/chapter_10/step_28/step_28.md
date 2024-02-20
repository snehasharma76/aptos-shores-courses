# Understanding Friend Visibility in Move

**Introduction**

Friend visibility, helps control where functions can be used. Instead of being either public or private, a function can now be accessible only to specific modules that are trusted. Here is how it works,
Friend visibility adds a new level called `public(friend)`. Modules can now have a list of trusted modules, allowing only these friends to use `public(friend)` functions.

**Example**

Here's a basic example to show how friend visibility works:
```move
module 0x1::A {
    friend 0x1::B;
    public(friend) fun foo() {
        // a friend only function
    }
    public fun bar() {
        // public function
    }
}
module 0x1::B {
    public fun baz() {
        A::foo(); // B can call foo() since it's a friend
    }
    public fun qux() {
        A::bar(); // B can also call public bar()
    }
}
module 0x1::C {
    public fun quux() {
        A::bar(); // C can only call public functions
    }
}
```
In this example, Module A has two types of functions: private (like "foo") and public (like "bar"). Module A considers Module B a friend, so it shares both types of functions with B. This means Module B can access both private and public functions of A.
However, Module C is not considered a friend by Module A. Therefore, Module C can only access the public functions of Module A. It cannot access the private functions. 

---
It is time you make some friend functions here. Create a public(friend) function `daily_visitors()` of type u64 that returns the value `6` then create a module named `tour_guide` under the package `robinson`. You now need to declare `tour_guide` as a friend under `my_shore` module. Once you are done with the declaration create a struct `TourData` with abilities key and drop with `nb_tourguide` of type u64 as a member. Now create a function `create_tour` with parameter `tour_data` as a mutable reference to the `TourData` struct. Inside the function declare a variable `daily_visitors` of type u64 which will call the `daily_visitors` function from `my_shore` module now check if (daily_visitors > 5) finally increment `nb_tourguide` by 1. Wooooh! it's time for some rest before we hop on to the next quest.