---
title: "Day 3: Branching"
layout: default
up: .
left: day2.html
right: day4.html
---

## `if` statements
An `if` statement executes its *body*, if a given `boolean` expression, called the *condition*, is `true`.
(Look at Day 1 for a list of operators that can be used to construct `boolean` expressions).

```java
if (condition) {
    // body
}
// next statement
```

<div class="mermaid">
graph TD
condition{"condition"} --> |true| body["body"]
condition --> |false| next("next statement")
body --> next
</div>

### `else` clauses
An `else` clause is executed if the condition of the associated `if` statement is false.

```java
if (condition) {
	// if body
} else {
	// else body
}
// next statement
```

<div class="mermaid">
graph TD
condition{"condition"} --> |true| body["if body"]
condition --> |false| else["else body"]
else --> next("next statement")
body --> next
</div>

### `else if` clauses
The body of an `else if` clause is executed if the condition of the associated `if`
statement is false and the condition of the `else if` clause is true.

```java
if (condition1) {
	// if body, executed if condition1 false
} else if (condition2) {
	// else if body, executed if condition1 false and condition2 true
}
```

<div class="mermaid">
graph TD
cond1{"condition1"} --> |true| if["if body"]
cond1 --> |false| cond2
cond2{"condition2"} --> |true| elif["else if body"]
cond2 --> |false| next("next statement")
if --> next
elif --> next
</div>

`else if` clauses can be chained. At the end of the chain, an optional `else` clause
can be present.

```java
if (condition1) {
	// executed if condition1 is true
} else if (condition2) {
	// executed if condition1 is false and condition2 is true
} else if (condition3) {
	// executed if condition1 and condition2 are false and condition3 is true
} else {
	// executed if condition1, condition2, and condition3 are false
}
```

## `switch` statements
A switch statement lets you execute a piece of code depending on what value a specific
expression is.
```java
switch (value) {
case 1:
    // executed if value is 1
    break;
case 2:
case 3:
    // executed if value is 2 or 3
    break;
default:
    // executed otherwise
}
```
