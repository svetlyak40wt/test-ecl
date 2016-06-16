A script to test binary building with ECL (Common Lisp)
=======================================================

This repository was created to reproduce an error, I've got
when trying to compile a lisp program with ECL into a binary.
The program is simple HELLO WORLD which have one dependency - `cffi`.

I found that if there is a `cffi` module in dependencies
of my system, then a binary crashes right after the start.
But if I run ecl and just quickload my system, then everything
goes very whell.

It is strange, because [cffi's documentation](https://common-lisp.net/project/cffi/) says
that ECL is supported.


## How to test

```
# download quicklisp and all dependencies
./boostrap

# this should go normally and print HELLO WORLD
./run

# now build the binary
./build

# run binary
./test-ecl
```

The last step produces this on latest ECL 16.1.2 (built on OSX from sources):

```
Condition of type: SIMPLE-ERROR
The packages
((UIOP/OS . #<UIOP/OS package>) (UIOP/PATHNAME . #<UIOP/PATHNAME package>))
were referenced in compiled file
NIL
but have not been created
Available restarts:

1. (IGNORE) Ignore the error, and try the operation again

Top level in: #<process TOP-LEVEL>.
```


