# Struct in Move

In Move, a struct is like a custom type. Think of it as a simple way to store information with names and values. The name is the property, and the value is what's stored.

Syntax:

```
struct NAME has Abilities
{
    FIELD1 : TYPE1,
    FIELD2 : TYPE2,
    ...
}
```
A `struct` can have up to 4 abilities that determine how values of this type can be used:
- **Copy:** Value can be copied or cloned by value.
- **Drop:** Value can be dropped at the end of its scope.
- **Key:** Value can be used as a key for global storage operations.
- **Store:** Value can be stored inside global storage.

This helps in organizing and managing data in Move programs.

Let us take a look at the struct that we created in the previous section and see how different abilities can be added to it.
Example:

```
struct GlobalData has key {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u8>,
    }
```

Similarly if we wanted to add a single ability like key or multiple like store, drop together we can do it as:
```
struct GlobalData has store, drop {
        nb_tree: u8,
        has_river: bool,
        shore_location: address,
        daily_visitors: vector<u8>,
    }
```


---
It is your turn to experiment with the code add a struct `House` with parameters `no_of_members` of type `integer`, `house_loacation` and `house_owner` of type `address`
