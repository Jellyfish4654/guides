---
layout: default
day: 6
dataset: java
---

A method is a sequence of instructions with a name that can be run from other places in the code.

For a `static` method (which we'll be using for now) *declaration*, the syntax is the following. For now, use `void`  for RETURNTYPE. 
```java
static RETURNTYPE METHODNAME(PARAM1TYPE PARAM, PARAM2TYPE PARAM /* etc... */) {
    // method body
}
```

The code that calls the method is called the *caller*, while
the method is the *callee*. A *parameter*, which is listed inside of the paranthesis in the method
declaration, allows the callee to pass data to the caller.

Here's an example:
```java
public class A {
    static void sayHelloTo(String name) {
        System.out.println("Hello, " + name);
        System.out.println("I hope you're doing well!");
    }

    public static void main(String[] args) {
        sayHelloTo("Jelileo");          // call site A
        sayHelloTo("Mike the Minion");  // call site B
    }
    // it should output:
    //    Hello, Jelileo
    //    I hope you're doing well!
    //    Hello, Mike the Minion
    //    I hope you're doing well!
}
```

The location where a method is used, or *called*, is called a *call site*. In the above example,
there are two call sites, labeled A and B; for both call sites, `main` is the caller and `sayHelloTo` is
the callee. Notice how how two different `String`s are both sent from `main` to `sayHelloTo` as the
parameter `name`.

## Return Values
By adding a return value from `void`, the method (the callee) can pass a value
back to the callee. As a reminder, the syntax is as follows.

```java
static RETURNTYPE METHODNAME(PARAM1TYPE PARAM, PARAM2TYPE PARAM /* etc... */) {
    // method body
}
```

Instead of `void`, which indicates no return value, change the RETURNTYPE to the type of return value.
Here's an example:

```java
public class B {
    static int sum(int[] array) {
        int total = 0; 
        for (int item : array) {
            total += item;
        }
        return total;
    }

    public static void main(String[] args) {
        int sum1 = sum(new int[] {1, 2, 3, 4, 5});
        System.out.println(sum1);
    }
}
```

Notice how the sum of the array, while calculuated in the `sum` method, 
is passed back to the `main` method.

## Method Overloading
It is possible to have two different methods with the same name but different parameters.

```java
public class C {
    static void klop(String upream) {
        System.out.println("in the version of 'klop' with a String parameter");
        System.out.println("upream = " + upream);
    }

    static void klop(double toody) {
        System.out.println("in the version of 'klop' with a double parameter");
        System.out.println("toody = " + toody);
    }

    public static void main(String[] args) {
        klop("boop");
        klop(6.28);
    }
}
```
