# Algorithms

This repository is for implementing as many different algorithms in as many different programming languages as I can in order to understand to some degree both the computer algorithm as well as the computer language.

Each implementation directory will follow the naming convention Algorithm_Language

## Mergesort_SWI-Prolog

Algorithm Purpose: Efficient algorithm for sorting lists

Compiler / interpreter Detail: SWI-Prolog version 6.6.4 for amd64

Running Instructions:

1. Run the SWI interpreter with the command "swipl"
1. Load mergesort.pl with the input "[mergesort]."
1. Input a list to sort followed by a variable to hold the result e.g. "mergesort([5,10,1,6,3], R)."

## Euclidean-Algorithm_GNU-C

Algorithm Purpose: For two numbers, finds the largest number which divides both number with no remainder (i.e. the greatest common denominator: GCD)

Compiler / interpreter Detail: gcc version 4.8.4 (Ubuntu 4.8.4-2ubuntu1~14.04.3)

Running Instructions:

1. Compile: "gcc gcd.c -o gcd"
2. Run using two numbers e.g. in linux "./gcd 42 105"
