## Chapter 4: Divide and Conquer

This chapter describes the concept of divide and conquer, in which a problem is broken down into subproblems that are smaller instances of the same problem, solving each of those subproblems (generally recursively), and then combining the solutions for each of those subproblems into the result of the original problem. Merge sort, which was unveiled to us in Chapter 2, is an example of a divide and conquer algorithm.

The chapter applies what was learned in Growth of Functions by always describing algorithms in terms of the various asymptotic notations. It also delves into how to solve recurrences in order to determine the asymptotic notation of algorithms using several methods.

- The Substitution Method, in which we guess a bound and then use mathematical induction to prove our guess is correct.
- The Recursion-Tree Method, in which we depict the algorithm as a tree whose nodes represent the costs incurred at each level.
- The Master Method, which provides the bounds for recurrences of the form: `T(n) = aT(n/b) + f(n)`. Where we create `a` subproblems each of which is `1/b` the size of the original problem

**Exercises:**

Work in progress.

**Problem Set:**

Work in progress.

**Algorithms:**

- [Maximum Subarray](https://github.com/hillmandj/clrs-algorithms/blob/master/ch-4/code/maximum_subarray.rb)
