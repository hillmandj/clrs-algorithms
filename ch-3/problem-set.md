## Chapter 3 Problem Set

**3-1 Asymptotic Behavior of Polynomials**

> Let
>
> <a href="https://www.codecogs.com/eqnedit.php?latex=p(n)&space;=&space;\sum_{i=0}^{d}&space;a_{i}n^{i}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?p(n)&space;=&space;\sum_{i=0}^{d}&space;a_{i}n^{i}" title="p(n) = \sum_{i=0}^{d} a_{i}n^{i}" /></a>
>
> where a<sub>d</sub> > 0, be a degree-d polynomial in n, and let k be a constant. Use the definitions of asymptotic notations to prove the following properties.

> a. If k >= d, then p(n) = &Omicron;(n<sup>k</sup>)

Here we need to prove that 0 <= p(n) <= c<sub>1</sub>n<sup>k</sup> when k >= d.

We can see that if the exponent `k` is greater than or equal to `d` and c<sub>1</sub> > 0, that eventually at some level of n (where n >= n<sub>0</sub>) c<sub>1</sub> * n<sup>k</sup> would be greater than p(n). In other words, c<sub>1</sub>n<sup>k</sup> grows faster than the polynomial when k >= d, or if they are equal there is some constant that would make the right side of the inequality hold.

> b. If k <= d, then p(n) = &Omega;(n<sup>k</sup>)

This would be the opposite of the previous question. Here we need to prove that 0 <= c<sub>1</sub> * n<sup>k</sup> <= p(n).

If `k` is less than or equal to `d` then the polynomial will grow at a faster rate than the function c<sub>1</sub>n<sup>k</sup> at some level of n (where n > n<sub>0</sub>).

> c. If k = d, then p(n) = &Theta;(n<sup>k</sup>)

Since we've proven this for `k >= d` and `k <= d` we can say this holds for `k = d`. This is because f(n) = &Theta;(g(n)) is true if and only if f(n) = &Omicron;(g(n)) and f(n) = &Omega;(g(n)).

In other words, &Omicron; represents the upper bound and &Omega; represents the lower bound for the set of functions in &Theta;

> d. If k > d, then p(n) = &omicron;(n<sup>k</sup>)

Here we need to prove that 0 <= p(n) < c<sub>1</sub>g(n).

Since n<sup>d</sup> < n<sup>k</sup>: 0 <= p(n) <= c<sub>1</sub>n<sup>d</sup> < c<sub>1</sub>n<sup>k</sup>

> e. If k < d, then p(n) = &omega;(n<sup>k</sup>)

Similar to the last problem, now we need to prove that 0 <= c<sub>1</sub>g(n) < p(n).

Since n<sup>k</sup> < n<sup>d</sup>: 0 <= c<sub>1</sub>n<sup>k</sup> < c<sub>1</sub>n<sup>d</sup> <= p(n)

**3-2 Relative Asymptotic Growth**

> Indicate, for each pair of expressions (A, B) in the table below, whether A is &Omicron;, &omicron;, &Omega;, &omega;, or &Theta; of B. Assume that k >= 1, &epsilon; > 0, and c > 1 are constants. Your answer should be in the form of the table with "yes" or "no" written in each box.

<table>
  <tr>
    <th>A</th>
    <th>B</th>
    <th>&Omicron;</th>
    <th>&omicron;</th>
    <th>&Omega;</th>
    <th>&omega;</th>
    <th>&Theta;</th>
  </tr>
  <tr>
    <td>lg<sup>k</sup>n</td>
    <td>n<sup>&epsilon;</sup></td>
    <td>Yes</td>
    <td>Yes</td>
    <td>No</td>
    <td>No</td>
    <td>No</td>
  </tr>
  <tr>
    <td>n<sup>k</sup></td>
    <td>c<sup>n</sup></td>
    <td>Yes</td>
    <td>Yes</td>
    <td>No</td>
    <td>No</td>
    <td>No</td>
  </tr>
  <tr>
    <td><span style="white-space: nowrap;">&radic;<span style="text-decoration:overline;">n</span></span></td>
    <td>n<sup>sin(n)</sup></td>
    <td>No</td>
    <td>No</td>
    <td>No</td>
    <td>No</td>
    <td>No</td>
  </tr>
  <tr>
    <td>2<sup>n</sup</td>
    <td>2<sup>n/2</sup></td>
    <td>No</td>
    <td>No</td>
    <td>Yes</td>
    <td>Yes</td>
    <td>No</td>
  </tr>
  <tr>
    <td>n<sup>lg(c)</sup></td>
    <td>c<sup>lg(n)</sup></td>
    <td>Yes</td>
    <td>No</td>
    <td>Yes</td>
    <td>No</td>
    <td>Yes</td>
  </tr>
  <tr>
    <td>log(n!)</td>
    <td>log(n<sup>n</sup>)</td>
    <td>Yes</td>
    <td>No</td>
    <td>Yes</td>
    <td>No</td>
    <td>Yes</td>
  </tr>
</table>

**3-3 Ordering By Asymptotic Growth Rates**

> a. Rank the following functions by order of growth; that is, find an arrangement g<sub>1</sub>, g<sub>2</sub>...g<sub>30</sub> of the functions satisfying g<sub>1</sub> = &Omega;(g<sub>2</sub>), g<sub>2</sub> = &Omega;(g<sub>3</sub>)...g<sub>29</sub> = &Omega;(g<sub>30</sub>). Partition your list into equivalence classes such that the functions f(n) and g(n) are in the same class if and only if f(n) = &Theta;(g(n))

> lg(lg<sup> * </sup>n), 2<sup>lg<sup> * </sup>n</sup>, (<span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">2</span></span>)<sup>lg(n)</sup>, n<sup>2</sup>, n!, (lg(n))!, (2/3)<sup>n</sup>, n<sup>3</sup>, lg<sup>2</sup>n, lg(n!), 2<sup>2<sup>n</sup></sup>, n<sup>1 / lg(n)</sup>, ln(ln(n)), lg<sup> * </sup>n, n * 2</sup>n</sup>, n<sup>lg(lg(n))</sup>, ln(n), 1, 2<sup>lg(n)</sup>, lg(n)<sup>log(n)</sup>, e<sup>n</sup>, 4<sup>lg(n)</sup>, (n + 1)!, <span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">lg(n)</span></span>, lg * (lg(n)), 2<sup><span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">(2 * log(n))</span></span></sup>, n, 2<sup>2</sup>, n * lg(n), 2<sup>2<sup>n + 1</sup></sup>

1. 2<sup>2<sup>n + 1</sup></sup>
2. 2<sup>2<sup>n</sup></sup>
3. (n + 1)!
4. n!
5. e<sup>n</sup>
6. n * 2<sup>n</sup>
7. 2<sup>n</sup>
8. (3/2)<sup>n</sup>
9. (lg(n))!
10. lg(n)<sup>lg(n)</sup>
11. n<sup>lg(lg(n))</sup>
12. n<sup>3</sup>
13. n<sup>2</sup>
14. 4<sup>log(n)</sup>
15. log(n!)
16. n * log(n)
17. 2<sup>log(n)</sup>
18. n
19. (<span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">2</span></span>)<sup>lg(n)</sup>
20. 2<sup><span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">(2 * log(n))</span></span></sup>
21. lg<sup>2</sup>n
22. ln(n)
23. <span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">(lg(n))</span></span>
24. ln(ln(n))
25. 2<sup>log<sup> * </sup>n</sup>
26. lg<sup> * </sup>(lg(n))
27. lg<sup> * </sup>n
28. lg(lg<sup> * </sup>n)
29. n<sup>1 / lg(n)</sup>
30. 1

Classes:

n<sup>lg(lg(n))</sup> = &Theta;(lg(n)<sup>lg(n)</sup>)

n * log(n) = &Theta;(log(n!))

n = &Theta;(2<sup>log(n)</sup>)

lg<sup> * </sup>n = &Theta;(lg<sup> * </sup>(lg(n)))

1 = n<sup>1 / lg(n)</sup>

> b. Give an example of a single nonnegative function f(n) such that for all functions g<sub>i</sub>(n) in part(a), f(n) is neither &Omicron;(g<sub>i</sub>(n)) nor &Omega;(g<sub>i</sub>(n))

<a href="https://www.codecogs.com/eqnedit.php?latex=f(n)&space;\left\{\begin{matrix}&space;2^{3n}&space;&&space;n&space;&&space;\mod&space;2&space;=&space;0\\&space;\frac{1}{n}&space;&&space;n&space;&&space;\mod&space;2&space;=&space;1&space;\end{matrix}\right." target="_blank"><img src="https://latex.codecogs.com/gif.latex?f(n)&space;\left\{\begin{matrix}&space;2^{3n}&space;&&space;n&space;&&space;\mod&space;2&space;=&space;0\\&space;\frac{1}{n}&space;&&space;n&space;&&space;\mod&space;2&space;=&space;1&space;\end{matrix}\right." title="f(n) \left\{\begin{matrix} 2^{3n} & n & \mod 2 = 0\\ \frac{1}{n} & n & \mod 2 = 1 \end{matrix}\right." /></a>

In this case n would be evaluated differently based on whether or not it was odd or even. Therefore, it can't be &Omega;(2<sup>2</sup>n + 1</sup></sup>) cause on an odd value it would be much less than that. Similarly, it can't be &Omicron;(1) since on an even value it would be much larger.

**3-4 Asymptotic Notation Properties**

> Let f(n) and g(n) be asymptotically positive functions. Prove or disprove the following conjuctures.

> a. f(n) = &Omicron;(g(n)) implies g(n) = &Omicron;(f(n)).

This is false. For example: n = &Omicron;(n<sup>2</sup>), but n<sup>2</sup> != &Omicron;(n)

> b. f(n) + g(n) = &Theta;(min(f(n), g(n)))

This is also false. If f(n) = x<sup>2</sup> and g(n) = x<sup>3</sup>, then x<sup>2</sup> + x<sup>3</sup> != &Omicron;(x<sup>2</sup>). Therefore it is not &Theta;(min(f(n), g(n)).

> c. f(n) = &Omicron;(g(n)) implies that lg(f(n)) = &Omicron;(lg(g(n))), where lg(g(n)) >= 1 and f(n) >= 1 for all sufficiently large n.

This is true. Since f(n) is already &Omicron;(g(n)) applying the log function to each side of the equality would maintain the relationship between the functions.

> d. f(n) = &Omicron;(g(n)) implies 2<sup>f(n)</sup> = &Omicron;(2<sup>g(n)</sup>)

This is false. 2n = &Omicron;(n), however 2<sup>2n</sup> = 4<sup>n</sup> != &Omicron;(2<sup>2n</sup>)

> e. f(n) = &Omicron;((f(n))<sup>2</sup>)

This is false. If we have f(n) = 1 / n, then f(n)<sup>2</sup> would become smaller and smaller as n increases.

> f. f(n) = &Omicron;(g(n)) implies g(n) = &Omega;(f(n))

This is true. This describes the transpose symmetry when comparing asymptotic non negative functions presented to us earlier in the chapter.

If 0 <= f(n) <= c<sub>1</sub>g(n), then we can say 0 <= g(n) <= (1 / c<sub>1</sub>) * f(n)

> g. f(n) = &Theta;(f(n / 2))

This is false. This is because it wouldn't hold for all f(n). f(n) = 2<sup>2n</sup> != &Theta;(2<sup>n</sup>)

> h. f(n) + &omicron;(f(n)) = &Theta;(f(n))

This is true. We can replace &omicron;(f(n)) with a function g(n) so long as it falls in the range of 0 <= g(n) < c<sub>1</sub>f(n). We can then select constants c<sub>1</sub> and c<sub>2</sub> such that:

0 <= c<sub>1</sub>f(n) <= f(n) + g(n) <= c<sub>2</sub>f(n)
