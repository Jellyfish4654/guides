---
layout: default
title: "Addendum 2.1: Colors & Formatting"
up: day2.html
---

## Control Characters
### Newline: `print` vs `println`
What `println` really does under the hood is print the given expression, and then
print a *newline* character (`\n`). What the newline character does is it
moves the cursor to one line below, so that the following text is printed
on the next line.

### Return
While the newline character `\n` moves the cursor to the beginning of the *next line*, the
return character `\r` moves the cursor to the beginning of the *current line*. This can be
used to overwrite text.

## ANSI Escape Codes
Most terminals support [ANSI escape codes](https://en.wikipedia.org/wiki/ANSI_escape_code) that allow formatted text to be printed to 
stdout & stderr. Some common ones are:

```java
System.out.print("\u001b[1m");        // 1 make text bold
System.out.print("this is bolded");
System.out.print("\u001b[4m");        // 4 make text underline
System.out.print("\n this is also underlined");
System.out.print("\u001b[0m");        // 0 reset formatting
System.out.print("\u001b[31m a");     // 31 change color to red
System.out.print("\u001b[32m b");     // 32 change color to green
System.out.print("\u001b[33m c");     // 33 change color to yellow
System.out.print("\u001b[34m d");     // 34 change color to blue
System.out.print("\u001b[35m e");     // 35 change color to purple
System.out.print("\u001b[36m e");     // 36 change color to cyan
System.out.print("\u001b[39m f");     // 39 change color to default
```
