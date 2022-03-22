---
layout: default
day: 4
dataset: java
---

## `while` loops
A `while` loop repeatedly executes a set of statements until a given condition becomes false.

```java
while (condition) {
    // body, continues to be executed until condition false
}
```

<div class="mermaid">
graph TD
condition{condition} --> |true| body
condition --> |false| next("next statement")
body --> condition
</div>

### `break`
A `break` statement causes the program to exit the while loop early.
```java
break;
```

<div class="mermaid">
graph TD
condition{condition} --> |true| body
condition --> |false| next
body --> condition
body --> |break| next("next statement")
</div>

### `continue`
A `continue` statement causes the computer to jump to the beginning of the while loop.
```java
continue;
```

<div class="mermaid">
graph TD
condition{condition} --> |true| body
condition --> |false| next
body --> condition
body --> |break| next("next statement")
body --> |continue| condition
</div>

## `do`...`while` loops
The `do`...`while` loop is like a while loop except it executes the body *before* checking the condition.

```java
do {
    // body, execeuted until condition is false
} while (condition);
```

<div class="mermaid">
graph TD
body --> condition
condition{condition} --> |true| body
condition --> |false| next("next statement")
body --> |break| next
body --> |continue| condition
</div>

## `for` loops
The `for` loop is a fancy form of the `while` loop. Like the `while` loop, it also supports `break` and `continue` statements.

```java
for (initialization; condition; postcondition) {
	// body
}
```

`condition` is a `boolean` expression. `initialization` and `postcondition` are statements.

<div class="mermaid">
graph TD
init[initialization] --> cond{condition}
cond --> |true| body
body --> post[postcondition]
post --> cond
cond --> |false| next("next statement")
body --> |break| next
body --> |continue| post
</div>