---
layout: default
title: "Day 7: Suggested Exercises"
up: day7.html
right: day8.html
---

<ol>
    <li class="task-green">
        <ol type="a">
            <li class="task-green">Write a class to model a pet. Include fields for name, age, species, and anything else relevant.</li>
            <li class="task-yellow">Write a non-<code>static</code> method with a signature of <code>boolean equals(Object object)</code>.<br>
            Coerce <code>object</code> to an instance of your pet class (throwback to Day 1!), and then return <code>true</code> iff all fields of <code>object</code> are equal to <code>this</code>.</li>
            <li class="task-orange">Write a <code>static</code> method that converts a <code>String</code> description of the pet. The description is in the following format: 
                <ul>
                    <li>For Zelda: <code>Zelda,dog,age 5,female</code> <code>Zelda,age 5,canine,female</code> <code>Zelda,female dog,age 5</code> (these should all correspond to equivalent objects).</li>
                    <li>For Lumi: <code>Lumi,cat,age 14,female</code> <code>Lumi,female cat,age 14</code></li>
                    <li>For Artemis: <code>Artemis,female,cat,age 7</code> <code>Artemis,age 7,female cat</code></li>
                </ul>
                <blockquote>
                You are probably going to need the <code>String::split</code> method (the <code>split</code> method of the <code>String</code> class) for part <small>[c]</small>.
                The method signature and documentation for that method can be found <a href="https://docs.oracle.com/javase/7/docs/api/java/lang/String.html#split(java.lang.String)">here</a>. Good luck!
                </blockquote>
            </li>
        </ol>
    </li>
    <li class="task-red">Write a terminal-based implementation of 2048.</li>
</ol>