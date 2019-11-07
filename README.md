# 42_DrQuine
An exploration of [Kleene's Recursion theorem](https://en.wikipedia.org/wiki/Kleene%27s_recursion_theorem) through three quines.

A quine is defined as "... a computer program which takes no input and produces a copy of its own source code as its only output ..." on [Wikipedia](https://en.wikipedia.org/wiki/Quine_(computing)).

### Colleen
Requirements from subject PDF:
* The executable must be named `Colleen`
* When executed, the program must display on the standard output an output identical to the source code of the file used to compile the program.
* The source code must contain at least:
  * A main function.
  * Two different comments.
  * One of the comments must be present in the main function.
  * One of the comments must be present outside of your program.
  * Another function in addition to the main function (which of course will be called).

### Grace
Requirements from subject PDF:
* The executable must be named `Grace`.
* When executed, the program writes in a file named `Grace_kid.c` the source code of the file used to compile the program.
* The source code must strictly contain:
  * No main declared.
  * Three defines only.
  * One comment.
* The program will be run by calling a macro.

### Sully
Requirements from subject PDF:
* The executable must be named `Sully`.
* When executed, the program writes in a file named `Sully_X.c`. The X will be an integer given in the source. Once the file is created, the program compiles this file and then runs the new program (which will have the name of its source file).
* Stopping the program depends on the file name: the resulting program will be executed only if the integer X is greater than 0.
* An integer is therefore present in the source of your program and will have to evolve by decrementing every time you create a source file from the execution of the program.
* You have no constraints on the source code, apart from the integer that will be set to 5 at first.

To the best of my ability, I implemented all three of these quines in C, x86_64 Assembly, and Python 3
## Build
To build everything:
```
$ make all
```
To run all tests:
```
$ make test
```
Shoutouts to [acarlson](https://github.com/acarlson99) for various assistance and moral support.
