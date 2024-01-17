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
	if  (x < y)  {
	
		let _sub: u64 = y - x;
	}
	else  {
		let _sub: u64 = x - y;
	}
}
```