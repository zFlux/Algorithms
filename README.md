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

## Quicksort_Java-10

Algorithm Purpose: Another efficient algorithm for sorting lists

Compiler / interpreter detail: Java 10, Java SE Runtime Environment 18.3 (build 10+46) (Windows 10 Pro)

Running Instructions:

1. Compile: "javac quicksort.java"
2. Run the program and input a list to sort e.g. "java quicksort 5 3 4 19 3" 
3. (optional) Run the program with a randomly generated array e.g. "java quicksort random 100 100" where the first value is the length of the array and the second value is the maximum element value
