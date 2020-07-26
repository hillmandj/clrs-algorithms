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

> lg(lg<sup> * </sup>n), 2<sup>lg<sup> * </sup>n</sup>, (<span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">2</span></span>)<sup>lg(n)</sup>, n<sup>2</sup>, n!, (lg(n))!, (2/3)<sup>n</sup>, n<sup>3</sup>, lg<sup>2</sup>n, lg(n!), 2<sup>2<sup>n</sup></sup>, n<sup>1 / lg(n)</sup>, ln(ln(n)), lg<sup> * </sup>n, n * 2</sup>n</sup>, n<sup>lg(lg(n))</sup>, ln(n), 1, 2<sup>lg(n)</sup>, lg(n)<sup>log(n)</sup>, e<sup>n</sup>, 4<sup>lg(n)</sup>, (n + 1)!, <span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">lg(n)</span></span>, lg * (lg(n)), 2<sup><span style="white-space: nowrap;">&radic;<span style="text-decoration:overline !important;">2 * log(n)</span></span></sup>, n, 2<sup>2</sup>, n * lg(n), 2<sup>2<sup>n + 1</sup></sup>

> b. Give an example of a single nonnegative function f(n) such that for all functions g<sub>i</sub>(n) in part(a), f(n) is neither &Omicron;(g<sub>i</sub>(n)) nor &Omega;(g<sub>i</sub>(n))