## Chapter 2 Problem Set

**2-1 Insertion Sort on Small Arrays in Merge Sort**

> Although merge sort runs in &Omicron;(n * log(n)) worst-case time and insertion sort runs in &Omicron;(n<sup>2</sup>) worst-case time, the constant factors in insertion sort can make it faster in practice for small problem sizes on many machines. Thus, it makes sense to coarsen the leaves of the recursion by using insertion sort within merge sort when subproblems become sufficiently small. Consider a modification to merge sort in which n/k sublists of length k are sorted using insertion sort and then merged using the standard merging mechanism, where k is a value to be determined.

> a) Show that insertion sort can sort the n/k sublists, each of length k, in &Omicron;(nk) worst-case time

If Insertion Sort runs in the worst-case runtime of &Omicron;(k<sup>2</sup>) for each sublist, if you have to sort n values of k sublists it becomes: &Omicron;(n/k * k<sup>2</sup>), which is equal to &Omicron;(nk).

> b) Show how to merge the sublists in &Omicron;(n * log(n/k)) worst-case time.

In practice, this would involve "trimming down" the length of the recurrence tree, such that once each sublist reaches the length of k, there is no further recursion needed and insertion sort is employed. This would mean that rather than having log(n) levels of recursion, we have log(n) - log(k) levels of recursion. Using logarithmic mathematical rules, when you substract two logarithms that is equal to dividing them, so our final result is log(n/k).

> c) Given that the modified algorithm runs in &Omicron;(nk + n * log(n/k)) worst case time, what is the largest value of k as a function of n for which the modified algorithm has the same running time as standard merge sort, in terms of &Omicron;-notation?

If k is equal to 1, it would produce the exact same runtime as the original merge sort, as that would yield &Omicron;(n + n * log(n)), in which we drop the lower-order / constant term such that it becomes &Omicron;(n * log(n)). That said, should we want k to be greater than 1, we could express k as a function of n and as long as f(k) is similar to the log(n) then it would have the same asymptotics.

> d) How should we choose k in practice?

Though there is probably a more mathematical approach, I would try running both algorithms using the same values of n, and modifying the value of k. At a certain point it would become clear what the largest value of k is such that we don't run longer than the time of the original merge sort algorithm.

**2-2 Correctness of Bubblesort**

> Bubblesort is a popular, but inefficient, sorting algorithm. It works by swapping adjacent elements that are out of order.

```
for i = 1 to A.length - 1
  for j = A.length downto i + 1
    if A[j] < A[j - 1]
      exchange A[j] with A[j - 1]
```

See implementation [here](https://github.com/hillmandj/clrs-algorithms/blob/master/ch-2/code/bubblesort.rb)

> a) Let `A'` denote the output of Bubbsort(A). To prove that Bubblesort is correct, we need to prove that it terminates and that `A'[1] <= A'[2] <= ... <= A'[n]` where `n = A.length`. In order to show that Bubblesort actually sorts, what else do we need to prove?

That `A'` has the same elements as `A`.

> b) State precisely the loop invariate for the for loop in lines 2-4, and prove that this loop invariant holds. Your proof should use the structure of the loop invariant proof presented in this chapter.

At each iteration of the loop, the position of the smallest element of `A[i..n]` is at most j.

Initialization: This holds true prior to the first iteration because the position of any element is at most `A.length`
Maintenance: This holds as we iterate, since we swap each element should `A[j] <= A[j - 1]`.
Termination: When we terminate, the smallest element of `A[i..n]` is in position `i`.

> c) Using the termination condition of the loop invariant proved in part (b), state a loop invariant for the the for loop in lines 1-4 that will allow you to prove inequality (2.3). Your proof should use the structure of the loop invariant proof presented in this chapter.

At the start of each iteration the subarray `A[1..i-1]` contains the `i - 1` smallest elements of `A` in sorted order.

Initialization: This holds true prior to the first iteration of the loop because we can assume that an array of 0 is already sorted
Maintenance: This holds as we iterate, since though it takes a lot of swapping to get there, we will always place the smallest element at the correct index of `A[1..i-1]`
Termination: When we terminate, the inequality condition holds and the array is in sorted order.

> d) What is the worst case running time of Bubblesort? How does it compare to the running time of insertion sort?

The worst case run time of Bubblesort would take place if the list was sorted in descending order, in which case we would have to swap n times for each iteration. This represents an &Omicron;(n<sup>2</sup>) runtime. This is the same as the worst case runtime for Insertion sort. However, the best case runtime for bubblesort will always be &Omicron;(n<sup>2</sup>) whereas the best case runtime for insertion sort is &Omicron;(n).

**2-3 Correctness of Horner's Rule**

> The following code fragment implements Horner's rule for evaluating a polynomial given the coefficients a<sub>0</sub>, a<sub>1</sub>, ... , a<sub>n</sub> and a value for x:

```
y = 0
for i = n downto 0
  y = a(i) + x * y
```

> a) In terms of &Omicron;-notation, what is the running time of this code fragment for Horner's rule?

This would be a linear run, we are iterating through n values and are performing constant mathematical operations.

> b) Write pseudocode to implement the naive polynomial-evaluation algorithm that computes each term of the polynomial from scratch. What is the running time of this algorithm? How does it compare to Horner's rule?

```
HORNER(x, A{a0, a1, ... , a(n)}, result=0)
  return 0 if A.length == 0
  result += A[-1] + (x * result)
  return result += HORNER(x, A[0..-1], result)
```

This recursive algorithm would be linear, as we still have to go through the whole list (i.e. it would have a recursive depth of n). It would have the same runtime as the code fragment for Horner's rule.

> c) Abbreviation: Prove that the mathematical formula / summation for loop invariant presented by book holds

Skipping this.

> d) Conclude by arguing that the given code fragment correctly evaluates a polynomial characterized by the coefficients a<sub>0</sub>, a<sub>1</sub>, ... , a<sub>n</sub>

The code fragment correctly terminates such that we've summed up all of the values while applying the proper coefficients to each term.

**2-4 Inversions**

> Let `A[1..n]` be an array of n distinct numbers. if `i < j` and `A[i] > A[j]`, then the pair `(i, j)` is called an inversion of `A`.

> a) List the five inversions of the array `{2, 3, 8, 6, 1}`

The five inversions are: (2, 1), (3, 1), (8, 6), (8, 1), (6, 1)

> b) What array with elements from the set `{1, 2, ..., n}` has the most inversions? How many does it have?

The array with the most inversions would be one that is sorted in descending order: `{n , n - 1, ..., 2, 1}`. It would have `(n * (n - 1)) / 2` inversions.

> c) What is the relationship between the running time of insertion sort and the number of inversions in the input array?

The run time is directly related to the number of inversions, as that is essentially what determines our best case, average case, and worst case scenarios. This has to be at least partially true, since in both problems the worst case is that of a list sorted in descending order. In insertion sort, we have to loop through many more values of that is the case, since we need to insert the key at the proper index.

> d) Give an algorithm that determines the number of inversions in any permutation of n elements in &Omicron;(n * log(n)) worst case time. (Hint: Modify merge sort.)

Please see [inversions](https://github.com/hillmandj/clrs-algorithms/blob/master/ch-2/code/count_inversions.rb)
