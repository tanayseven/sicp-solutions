SICP Solutions
==============

![license](https://img.shields.io/github/license/tanayseven/sicp-solutions.svg)
![GitHub repo size in bytes](https://img.shields.io/github/repo-size/tanayseven/sicp-solutions.svg)

This is a repository where I push all the SICP problems that I solve
--------------------------------------------------------------------

The code here is implemented MIT-Scheme implementation available in Racket language. 
Please install Racket/DrRacket to run/modify the code from this repo.

File Structure
--------------
- File name maps to the exact exercise in the book
- Files are divided into 3 sections in the following order
  1. Problem statement (the problem statement directly copy-pasted from the book)
  2. Solution (the exact implementation of the solution in MIT-Scheme)
  3. Tests (to test the implemented solution)

Steps to run the tests for the solution:
----------------------------------------
```bash
raco setup --avoid-main # To install all the necessary packages
raco test . # To run all the tests
raco test <file-name.scm> # To run specific tests
```

