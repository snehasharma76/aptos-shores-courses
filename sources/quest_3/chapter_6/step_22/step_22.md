# Understanding Conditions in Move

A condition is an expression that evaluates to either true or false. Conditions are used to make decisions and control the flow of program execution.

**Syntax:**
```
// syntax for if expression
if(<condition>)
    <statement>
else if(<condition>)
    <statement>
..
..
else
    <statement>
```
**Example:**
```
fun substract (){
	let x: u64 = 10;
	let y: u64 = 20;
	let z: u64 = 5;
	if  ((x > y) && (y > z))  {
		let _sub: u64 = x - y - z;
	}
	else  if  ((y > x) && (x > z))  {
		let _sub: u64 = y - x - z;
	}
	else  {
		let _sub: u64 = z - x - z;
	}
}
```
---

It is time for you to stop thinking about if you should learn MOVE or not and get into experiemnting with the `if-else` in the code here. Create a function `build_house` with parameter `data` that will act as mutable reference for `GlobalData` struct. Then check the condition `nb_tree < 5` increment `nb_tree` by 1 if it is truen else increment `nb_house` by 1 and decrement `nb_tree` by the `Min_trees` constant. You would also need to declare a new variable `nb_house` of integer type u64 in the `Global Struct` and  initialize `nb_house` with value 1 in the function `init_GlobalData`.