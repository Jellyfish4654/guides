---
layout: default 
day: 2
dataset: java
---

## Variables
A variable is a named piece of data; think of it as a box that has label on it.
In this metaphor, the label would be the *variable name* and the contents of the box would be
the *value* of the variable.

A variable name can only consist of underscores (_), uppercase and lowercase letters, and digits (0-9) and cannot start with a digit.
There a couple of *conventions* regarding variable names, recommended practises which are designed to make code more consistent and readable:
 - Variable names should be camelCase, where all letters are lowercase except for the first
letter of nth words for all n>2 (e.g. `myLittlePony`, `amIDying`, `theSecondDayOfTheYear`).
 - If you don't want the person reading your code to pointlessly suffer, use variable names that are somewhat
descriptive (but not to the extent where the names become annoying to type). There are a couple of exceptions
to this convention (notably `i`).

To create a variable, use something called a *variable declaration*:

```java
TYPENAME VARIABLENAME;
```

As an example, the statements
```java
String word;
int age;
```
creates two variables: one called `word` whose contents are `String`s; one called `age` whose contents are `int`s.

To change the contents of a metaphorical box, use *assignment*:

```
VARIABLENAME = EXPRESSION;
```

Using the previous example:
```java
word = "hello world!";
age = (5 + 3 + 2) / 7;
```

You can declare and assign a variable in the same statement, like the following:
```java
// if you disagree you're wrong
String favouriteBook = "Aristotle and Dante Discover the Secrets of the Universe";
```

### final
A `final` variable cannot be assigned to more than once (i.e. whose value cannot be changed).
A `final` variable declaration is identical to a typical variable declaration
but with the addition of a `final` keyword in front.
```java
final TYPENAME VARIABLENAME = EXPRESSION;
```

As an example,
```java
final int teamNumber = 4654;
```

## Input & Output
A typical terminal-based program has three pre-opened files:
stdout (output file), stderr (output file), and stdin (input file).
The convention is that stdout is used for normal output while stderr is used for logging
or reporting errors. In the terminal, stdout and stderr appear identical; however
sometimes the difference is useful for e.g. shell piping.

When you write
```java
System.out.println(EXPRESSION);
```
what the code is actually doing is writing EXPRESSION to the stdout file.
You can similarly write
```java
System.err.println(EXPRESSION);
```
to write to the stderr file.

### The `Scanner` data type
For input, we'll have to use a new data type called `Scanner`.

To use `Scanner`, you'll first need to use an *import statement*. This is done so that
the Java compiler knows what `Scanner` is. Put the following code at the top of your file, before
`public class`.

```java
import java.util.Scanner;
```

To create a new `Scanner` object that reads from stdin, use the following expression:

```java
new Scanner(System.in)
```

If you have a variable `sc` whose data type is `Scanner`, you can use
one of the following expressions to retrieve user input:
```java
sc.nextLine() // evaluates to a String
sc.nextInt() // evaluates to an int
sc.nextDouble() // evaluates to a double
```

One important difference between the Scanner expressions above and the expressions
you were previously introduced to, such as `1 + 2 * 5`, is that the Scanner expressions
have *side effects*, which means that it actually *does something*.
