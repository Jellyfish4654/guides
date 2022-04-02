---
layout: default
day: 8
dataset: java
# static members & static constructors
---

## `null`
There is a special value called `null` that is part of any reference type (i.e. any time that is an array, `class`, `enum`, or `interface`).
Trying to call a method or access a field on a `null` value will result in a `NullPointerException`.

> To prevent `NullPointerException`s, make sure to document (especially for method parameters) which variables can be `null` and which variables are assumed
not to be `null`.  
> For variables that can be `null`, make sure to use `if` statements to check that its value is not `null` before accessing it. Otherwise
> you can accidentally create really hard-to-figure-out-wtf-is-happening bugs.

```java
String someText = "Hello world";
System.out.println(someText.length()); // 11
someText = null;
System.out.println(someText.length()); // rip program
```

## `static` fields
Sometimes data is *global*; that is, it needs to be shared across an entire program. In Java, this
can be accomplished through `static` fields. The syntax for `static` fields is the following; `public`, `private`, `protected`, and `final`
have the same meanings as with regular fields.

```java
[public|private|protected] static [final] FIELDTYPE FIELDNAME;
```

For example, if we wanted to count the number of `Student` instances created:

```java
class Student {
    public static int numberOfInstances = 0;

    public String name;
    public int grade;
    public String[] courses;
    public Grades grades;

    public static class Grades {
        /* ... omitted ... */
    }

    public Student(String studentName, int studentGrade, String[] studentCourses) {
        this.name = studentName;
        grade = studentGrade;
        courses = studentCourses;
        grades = new Grades();

        // increase numberOfInstances, which is not tied
        // to a particular instance
        numberOfInstances += 1;
    }

    public void describeTypicalDay() {
        /* ... omitted ... */
    }
}
```

Fields that are `static final` are commonly used as global *constants*, in place of code. For instance,
if we wanted to make a variable for the the minimum grade of a student, we would use `static` because
it isn't tied to a particular student (it's the same for all) and `final` because it would not
change while the program is running.

```java
class Student {
    public final static int MIN_GRADE = 9;
    public static int numberOfInstances = 0;

    public String name;
    public int grade;
    public String[] courses;
    public Grades grades;

    public static class Grades {
        /* ... omitted ... */
    }

    public Student(String studentName, int studentGrade, String[] studentCourses) {
        this.name = studentName;
        if (studentGrade < MIN_GRADE) {
            grade = MIN_GRADE;
        } else {
            grade = studentGrade;
        }
        courses = studentCourses;
        grades = new Grades();

        // increase numberOfInstances, which is not tied
        // to a particular instance
        numberOfInstances += 1;
    }

    public void describeTypicalDay() {
        /* ... omitted ... */
    }
}
```

> The convention is to use all uppercase, with words separated by underscores, for constant names.

## `static` constructors
Code inside of a `static` constructor is run before the `main` method of the program is run.
Typically they're used to initialize `static` fields.

`static` constructors are placed inside of a `class`. Their syntax is:

```java
static {
    // code here :)
}
```
