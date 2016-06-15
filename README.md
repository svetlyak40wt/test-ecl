A script to test binary building with ECL (Common Lisp)
=======================================================


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


