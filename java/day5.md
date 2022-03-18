---
layout: default
left: day4.html
right: day6.html
up: .
title: "Day 5: Arrays"
---

An *array* is a list of a fixed number of values.

There are two ways of constructing an array:
```java
int[] primes = new int[]{2, 3, 5, 7, 11, 13, 17, 19, 22}; // 9-element array
double[] pid = new double[3]; // pid is a 3-element array of zeroes
```

Retrieving an element is called *index*ing. Indexes start at 0, so the 1st element has index 0,
the 2nd element has index 1, and the nth element has index n-1.
```java
System.out.println(primes[3]); // prints 7, the fourth element of primes

pid[0] = 0.01; // sets the 1st element of `pid` to 0.01
pid[1] = 0.01; // sets the 2nd element of `pid` to 0.01

// ERROR! `pid` has only 3 elements, but pid[3] would refer to the 4th element
// arrays are not resizable
pid[3] = 0.01; 
```

It is also possible to get the length of an array:

```java
System.out.println(pid.length); // 3
primes[primes.length - 1] = 23; // changes the last element of `primes` (index 9-1 = index 8 = 9th element)
```

## Foreach
For-each loops can be used to *iterate* over the array.
The body of a for-each loop is run once per element of the array.

```java
for (int prime : primes) {
  System.out.println("a prime is " + prime);
}
```

For-each loops support `break` and `continue`, just like the other kinds of loops.
