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

## `class` Placement
In the previous example, additional classes (`Student`) were placed inside of the same file (in that case `A.java`)
as the main class (in that case `A`). The disadvantage of doing this is that that class cannot be 
accessed from outside of that file.

### in their own file
Classes can instead be placed into their own file. This is the most
common practice.

Using the example from above,

Student.java:
```java
public class Student {
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
```

A.java:
```java
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

### inside of another class
Classes that are placed inside of another class are called *inner classes*.
Typically, inner classes are used when the inner class only exists to serve
the outer class.

For example, suppose we wanted to include additional information in our `Student`
class about their grades. We could encapsulate this information into a `Grades` class; 
because this information only makes sense when relating to `Student`s, it would be appropriate
to make it a subclass of `Student`.

```java
class Student {
    public String name;
    public int grade;
    public String[] courses;
    public Grades grades;

    // This inner class is static, which means
    // it does not implicitly have a reference to a Student instance.
    // If the inner class was not static, it would be able
    // to access the fields of the associated Student instance
    // like name, grade, and courses.
    //
    // imho, non-static inner classes
    // are a sign of spaghetti code
    public static class Grades {
        public double english; // [0, 1]
        public double math; // [0, 1]
        public double science; // [0, 1]
        public double sociology; // [0, 1]
        public double foreignLanguage; // [0, 1]

        public double average() {
            return (english + math + science + sociology + foreignLanguage)/5;
        }

        public Grades() {
            english = 1;
            math = 1;
            science = 1;
            foreignLanguage = 1;
            sociology = 1;
        }
    }

    public Student(String studentName, int studentGrade, String[] studentCourses) {
        this.name = studentName;
        grade = studentGrade;
        courses = studentCourses;
        grades = new Grades();
    }

    public void describeTypicalDay() {
        // omitted for brevity's sake
    }
}

public class A {
    public static void main(String[] args) {
        Student arnv = new Student("Arnav", 12, new String[] {"Linear Algebra", "English", "Gym"});
        arnv.grades.english = 0.7;
        arnv.grades.math = 0.8;
        arnv.grades.science = 0.9;

        // when referring to the Grades class outside of Student,
        // use Student.Grade
        Student.Grades howrdGrades = new Student.Grades();
        howrdGrades.english = 0.88;

        Student howrd = new Student("Howard", 12, new String[] {"Calculus", "Lunch", "Free"});
        howrd.grades = howrdGrades;

        Student clar = new Student("Claire", 11, new String[] {"Precalc", "AP Lang", "AP Minecraft"});
        clar.grades.math = 0.8;
        
        for (Student student : new Student[] { arnv, howrd, clar }) {
            System.out.println(student.name + "'s average is " + (student.grades.average()*100) + "%");
        }
    }
}
```