---
layout: default
day: 7
dataset: java
---

Sometimes it is convenient to create new data types using a combination of
already pre-defined data types. In Java, this is called a `class`.

For example, the following is a class that could possibly be used to represent
a student.

```java
class Student {
    public String name;
    public int grade;
    public String[] courses;
}
```

A `Student` object contains `name`, `grade`, and `courses`. These are called
the *fields* or *members* of a class.

(This kind of new data type is called a *product type* because the
possible values for a `Student` object are the Cartesian product
of the possible values for `String`, `grade`, and `courses`. Kinda.)

The syntax for declaring a field is the following
(things in brackets are optional).

```java
[public|private|protected] [final] FIELDTYPE FIELDNAME;
```

Fields that are marked with `public` can be used outside of the class, while fields marked with
`private` or `protected` cannot be. Fields marked with `final` cannot be changed.

## Constructors
We've created an outline for what kind of data a `Student` object will contain, but
how do you actually create a `Student` object? You would use a *constructor*, a
special type of method.

The syntax for a constructor is:

```java
[public|private|protected] CLASSNAME(PARAM1TYPE PARAM1, PARAM2TYPE PARAM2 /* ... etc */) {
    // method body
}
```

Applied to our previous `Student` situation,

```java
class Student {
    public String name;
    public int grade;
    public String[] courses;

    // This is a constructor!
    public Student(String studentName, int studentGrade, String[] studentCourses) {
        this.name = studentName; // you can modify a member field using `this`
        grade = studentGrade; // `this` can be omitted if it is not ambiguous
        courses = studentCourses;
    }
}

public class A {
    public static void main(String[] args) {
        Student arnv = new Student("Arnav", 12, new String[] {"Linear Algebra", "English", "Gym"});
        Student howrd = new Student("Howard", 12, new String[] {"Calculus", "AP Macro", "Free"});
        Student clar = new Student("Claire", 11, new String[] {"Precalc", "AP Lang", "AP Minecraft"});

        System.out.println(arnv.name); // Arnav
        System.out.println(arnv.courses[0]); // Linear Algebra
        System.out.println(howrd.courses[1]); // Lunch
    }
}
```

In the above example, `arnv`, `howrd`, and `clar` are all *instances* of `Student`.

## Non-`static` Methods
Previously, we've used `static` methods, which are independent of any particular instance of a class.
In contrast, non-`static` methods can access an instance of the class using the `this` keyword.

A more general (but not the most general) syntax for a method is the following, with brackets meaning optional. 
```java
[public|private|protected] [static] RETURNTYPE METHODNAME(PARAM1TYPE PARAM, PARAM2TYPE PARAM /* etc... */) {
    // method body
}
```

Using the previous `Student` example,
```java
class Student {
    public String name;
    public int grade;
    public String[] courses;

    public Student(String studentName, int studentGrade, String[] studentCourses) {
        this.name = studentName;
        grade = studentGrade;
        courses = studentCourses;
    }

    // non-static method!
    public void describeTypicalDay() {
        // notice how we can access `name`
        // from inside of this method
        System.out.println("=== " + this.name + "'s Day ===");

        System.out.println("6:30 " + this.name + " wakes up and gets ready for the day.");
        System.out.println("7:00 " + name + " takes the bus to school."); // `this` can be omitted
        System.out.println("7:50 " + name + " attends '" + courses[0] + "' with about 10% of their total brainpower");
        System.out.println("8:45 " + name + " attempts to listen to the announcements but is unable to hear them.");
        System.out.println("10:30 " + name + " eats what is supposed to be lunch but is in reality closer to breakfast.");
        System.out.println("11:30 " + name + " groans as they realize '" + courses[1] + "' is next in their day");
        System.out.println("16:00 " + name + " returns home after a couple of extracurricular activities and is dying.");
        if (grade == 12) {
            System.out.println("22:00 " + name + " is halfway done with their homework and decides to call it quits, being infected with senioritis.");
        } else {
            System.out.println("22:00 " + name + " is halfway done with their homework and continues to be dying.");
        }
    }
}

public class A {
    public static void main(String[] args) {
        Student arnv = new Student("Arnav", 12, new String[] {"Linear Algebra", "English", "Gym"});
        Student howrd = new Student("Howard", 12, new String[] {"Calculus", "Lunch", "Free"});
        Student clar = new Student("Claire", 11, new String[] {"Precalc", "AP Lang", "AP Minecraft"});

        System.out.println(arnv.name); // Arnav
        System.out.println(arnv.courses[0]); // Linear Algebra
        System.out.println(howrd.courses[1]); // Lunch

        // this is how you call a non-static method
        arnv.describeTypicalDay();
        clar.describeTypicalDay();
    }
}
```