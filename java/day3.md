---
title: "Day 3: Basic Concepts"
layout: default
up: .
right: day2.html
right: day4.html
---

## If statements
If statements executes a set of statements if a condition is true

```java
if (condition) {
// body

}
// next statement
```
![If Statement](/images/basicIfStatement.png "Basic If Statement")
---
Here are a whole bunch of operators you can use as a condition.

|Boolean Operators | What it does |
|---|---|
| `a || b` | OR: Evaluates to true if a or b is true. |
| `a && b` | AND: Evaluates to true if a and b are both true. |
| `!a` | NOT: Evaluates to true if a is false and false if a is true. |

Here are a bunch of other operators:

| Operator | What it does |
|---|---|
| `a == b` | Equal: Evaluates to true if a = b. |
| `a != b` | Not Equal: Evaluates to true if a does not equal b. |
| `a > c` | Greater Than: Evaluates to true if a > c |
| `a < c` | Less Than: Evaluates to true if a < c |
| `a >= c` | Greater Than or Equal To: Evaluates to true if a > c or a = c |
| `a <= c` | Less Than or Equal To: Evaluates to true if a <> c or a = c |

___

You can also add an else if which will run if the preceding if statement is false. However, if the first if statement if true, any succeding else ifs will not run.
```java
if (condition1) {
// if body
} else if (condition2) {
// else if body

}
```

![If Statement](/images/elseIfIfStatement.png "Else If If Statement")

___

You can also add an else to the end, to run if none of the earlier statements are true
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
![If Statement](/images/chonkIfStatement.png "Else If If Statement")

---
## While loops

Executes a set of statements until a given condition becomes false.

```java
while (condition) {
// body

}
```
A break statement causes the program to exit the while loop early.
```java
break;
```
A continue statement causes the computer to jump to the beginning of the while loop.
```java
continue;
```
The do...while loop is like a while loop except it executes the body before checking for
the condition.

```java
do {

// body
} while (condition);
```
![If Statement](/images/doWhile.png "Do while outline")

---

## Switch Statements
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

}```
