# Theoretical Computer Science Cheat Sheet
The *Theoretical Computer Science Cheat Sheet* by Steve Seiden with my favorite Big-Oh definitions instead of the discrete ones.

The source is mostly identical to what is published as a TeX Showcase [here](https://tug.org/texshowcase/), and subject to the same licsense statement:

> Submitter Martin Jansche writes:  
Here's an example of TeX formatting many many equations under tight space constraints: Steve Seiden's theoretical computer science cheat sheet, which used to be available from http://bit.csc.lsu.edu/~seiden/#cheat. Quoting the web page:  
>> I grant permission for you to reproduce this cheat sheet, and redistribute it for educational purposes only. You may not reproduce it for profit. If you reproduce it, you must not alter or delete my copyright.


My modifications are:

* changed the definition of Big-Oh ($$f(n) = O(g(n)$$) and Big-Omega ($$f(n) = \Omega(g(n)$$) on page 1
* added the definition of asymptotic equivalence $$f(n) \sim g(n)$$.
* Shifted the page offset so that on letter paper, the content is centered (see `cheat.tex`).
* Added a `build.sh` bash script to compile the cheat sheet to PDF
  * page 10 (`t10.tex`) with the Escher knot didn't work via `tex` and `dvips`, so I converted the image to PDF and modified `t10.tex` to work with `pdftex`.
    Note that some other pages contain postscript figures, which do not directly work in `pdftex`, hence the other pages are compiled using `tex` and then converted.


To build the cheat sheet, you will need
 * a (La)TeX installation including `tex` and `pdftex` (standard on most distributions)
 * `dvipdfm` (part of TeXlive)
 * `pdftk`
