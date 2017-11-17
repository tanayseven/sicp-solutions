SICP Solutions
==============

This is a repository where I push all the SICP problems that I solve
--------------------------------------------------------------------

The directory structure is as follows
------------------------------------
```
.
+--README.md
+--LICENSE.txt
+--src/
| +--ex_1.31.scm
| +--ex_2.32.scm
| +-- ...
+--tests/
| +--test_ex_1.31.scm
| +--test_ex_2.32.scm
| +-- ...
+--Makefile
```
1. The README is this currently viewed file that instructs and gives different steps in doing sertain things
2. LICENSE file is the file that is having the license that all the programs in this repository follow which is MIT license
3. There are two directories namely src/ which have the solutions to the problems from the SICP book
4. The second directory is called tests/ which checks correctness the solutions with a given set of solutions
5. The Makefile has different targets that can run all the tests and check if all the programs are fine

Steps to run the file:
----------------------
```bash
sudo apt install mit-scheme # To install scheme on Linux
brew install mit-scheme # To install scheme on Mac
make test # This will run all the .scm files from the tests/ directory
```
