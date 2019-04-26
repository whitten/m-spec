# Introduction

There has always been a clear separation between practical programming
languages and mathematical programming constructs. Even languages such
as ML and Scheme, though rooted in mathematics, have unnecessary or
impure extensions for convenience and performance. While these
extensions improve the language in some ways, they also make it more
complex; programs become difficult to reason about for humans and
computers alike, and maintaining a compliant, feature-rich software
stack becomes impossible.

Simplicity is necessary to reason about a programming language; and when
writing simple programs, most programming languages are. It is when
programs get more complex, be it for performance or for abstraction,
that simplicity is discarded; complex extensions are used, edge cases
are abused, and reasoning about a program becomes impossible.

M is not just a simple programming language — mathematical systems like
Turing Machines and the
![\\lambda](https://latex.codecogs.com/png.latex?%5Clambda
"\\lambda")-Calculus are much simpler than M is. M is a simple
programming language which can express the extensions provided by
practical programming languages without the additional complexity.

To do this, M exhibits the following properties:

1.  All functions are pure.

2.  All definitions are unordered.

3.  Any two expressions can be made equivalent with a macro.

# Syntax

  
![\\begin{aligned}
&\\forall\\mathbb{C} &:&\\;\\mathbb{C}\\supseteq\\texttt{(special +
newline + whitespace)}\\land\\texttt{null}\\notin\\mathbb{C}\\\\
&\\texttt{character} &=&\\;\\mathbb{C}\\\\
&\\texttt{special}
&=&\\;\\{\\texttt{\`;'},\\texttt{\`"'},\\texttt{\`('},\\texttt{\`)'}\\}\\\\
&\\texttt{comment} &=&\\;\\texttt{\`;'}\\quad\\texttt{(character -
newline)\*}\\quad\\texttt{newline}\\\\
&\\texttt{symbol} &=&\\;\\texttt{(character - special -
whitespace)\*}\\\\
&
&|&\\;\\texttt{\`"'}\\quad\\texttt{character\*}\\quad\\texttt{\`"'}\\\\
&
&|&\\;\\texttt{\`""'}\\quad\\texttt{character\*}\\quad\\texttt{\`""'}\\\\
&\\texttt{expression}&=&\\;\\texttt{symbol}\\\\
&
&|&\\;\\texttt{\`('}\\quad\\texttt{expression\*}\\quad\\texttt{\`)'}\\\\
&\\texttt{program} &=&\\;\\texttt{expression\*}
\\end{aligned}](https://latex.codecogs.com/png.latex?%5Cbegin%7Baligned%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cforall%5Cmathbb%7BC%7D%20%20%26%3A%26%5C%3B%5Cmathbb%7BC%7D%5Csupseteq%5Ctexttt%7B%28special%20%2B%20newline%20%2B%20whitespace%29%7D%5Cland%5Ctexttt%7Bnull%7D%5Cnotin%5Cmathbb%7BC%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bcharacter%7D%20%26%3D%26%5C%3B%5Cmathbb%7BC%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bspecial%7D%20%20%20%26%3D%26%5C%3B%5C%7B%5Ctexttt%7B%60%3B%27%7D%2C%5Ctexttt%7B%60%22%27%7D%2C%5Ctexttt%7B%60%28%27%7D%2C%5Ctexttt%7B%60%29%27%7D%5C%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bcomment%7D%20%20%20%26%3D%26%5C%3B%5Ctexttt%7B%60%3B%27%7D%5Cquad%5Ctexttt%7B%28character%20-%20newline%29%2A%7D%5Cquad%5Ctexttt%7Bnewline%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bsymbol%7D%20%20%20%20%26%3D%26%5C%3B%5Ctexttt%7B%28character%20-%20special%20-%20whitespace%29%2A%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%22%27%7D%5Cquad%5Ctexttt%7Bcharacter%2A%7D%5Cquad%5Ctexttt%7B%60%22%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%22%22%27%7D%5Cquad%5Ctexttt%7Bcharacter%2A%7D%5Cquad%5Ctexttt%7B%60%22%22%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bexpression%7D%26%3D%26%5C%3B%5Ctexttt%7Bsymbol%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%28%27%7D%5Cquad%5Ctexttt%7Bexpression%2A%7D%5Cquad%5Ctexttt%7B%60%29%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bprogram%7D%20%20%20%26%3D%26%5C%3B%5Ctexttt%7Bexpression%2A%7D%0A%20%20%20%20%20%20%20%20%5Cend%7Baligned%7D
"\\begin{aligned}
            &\\forall\\mathbb{C}  &:&\\;\\mathbb{C}\\supseteq\\texttt{(special + newline + whitespace)}\\land\\texttt{null}\\notin\\mathbb{C}\\\\
            &\\texttt{character} &=&\\;\\mathbb{C}\\\\
            &\\texttt{special}   &=&\\;\\{\\texttt{\`;'},\\texttt{\`\"'},\\texttt{\`('},\\texttt{\`)'}\\}\\\\
            &\\texttt{comment}   &=&\\;\\texttt{\`;'}\\quad\\texttt{(character - newline)*}\\quad\\texttt{newline}\\\\
            &\\texttt{symbol}    &=&\\;\\texttt{(character - special - whitespace)*}\\\\
            & &|&\\;\\texttt{\`\"'}\\quad\\texttt{character*}\\quad\\texttt{\`\"'}\\\\
            & &|&\\;\\texttt{\`\"\"'}\\quad\\texttt{character*}\\quad\\texttt{\`\"\"'}\\\\
            &\\texttt{expression}&=&\\;\\texttt{symbol}\\\\
            & &|&\\;\\texttt{\`('}\\quad\\texttt{expression*}\\quad\\texttt{\`)'}\\\\
            &\\texttt{program}   &=&\\;\\texttt{expression*}
        \\end{aligned}")  

## Characters

M can use any character set which encodes the four special characters, a
newline character, and a whitespace character. To allow for simple
source termination, the null character is not allowed in M code. For
consistency, all M code samples in this specification use the ASCII
character set.

## Specials

The four special characters are reserved for use in non-symbol syntax.
This is done to ensure that symbols do not include any characters which
are meant be used in other syntactic constructs. For example, if the
special characters were not reserved, the expression `(symbol)` would be
parsed as `("symbol)"` rather than `("symbol")`.

## Comments

Comments in M begin with a semicolon and last until the end of the line.
They are ignored and discarded like whitespace and newlines, as they are
only intended to be used for explaining code. M does not provide
multiline comments, as comments are not meant to be used for
documentation.

## Symbols

Symbols in M have two forms, inline and literal. Inline symbols are
strings terminated by whitespace or a special symbol, and should be used
by default. Literal symbols are strings surrounded by one or two quotes,
and should only be used when a symbol is impossible to represent using
inline symbols (for example, the symbols `"()"` and `""""`).

## Expressions

Expressions in M have two forms, symbols and lists. Symbol expressions
are symbols as defined in section [2.4](#subsec:symbols). Lists
expressions are lists of expressions surrounded by matching parentheses.

## Programs

M programs are lists of expressions. Note that there is no terminator
specified for M programs, nor a separator for expressions, so M programs
are not restricted to a single file or a null-terminated string.

# Semantics

  
![\\begin{aligned}
&\\frac{\\;}{\\langle x,\\Gamma\\rangle\\Downarrow\\Gamma(x)}
&\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(macro
x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) =
(v,\\top)\\rangle}& \\\\
&\\frac{\\;}{\\texttt{(fn x e)}\\Downarrow\\lambda x.e}
&\\frac{\\langle f,\\Gamma\\rangle\\Downarrow\\lambda x.e\\quad\\langle
a,\\Gamma\\rangle\\Downarrow i\\quad\\langle e\[x/i\]\\rangle\\Downarrow
v}{\\langle\\texttt{(f a)},\\Gamma\\rangle\\Downarrow v}&\\\\
&\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(def x
e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) = (v,\\bot)\\rangle}
&\\frac{\\Gamma(m)=(f,\\top)\\quad\\langle
f(e),\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(m
e)},\\Gamma\\rangle\\Downarrow v}&
\\end{aligned}](https://latex.codecogs.com/png.latex?%5Cbegin%7Baligned%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5C%3B%7D%7B%5Clangle%20x%2C%5CGamma%5Crangle%5CDownarrow%5CGamma%28x%29%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5Clangle%20e%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28macro%20x%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%5Clangle%20v%2C%5CGamma%28x%29%20%3D%20%28v%2C%5Ctop%29%5Crangle%7D%26%20%20%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5C%3B%7D%7B%5Ctexttt%7B%28fn%20x%20e%29%7D%5CDownarrow%5Clambda%20x.e%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5Clangle%20f%2C%5CGamma%5Crangle%5CDownarrow%5Clambda%20x.e%5Cquad%5Clangle%20a%2C%5CGamma%5Crangle%5CDownarrow%20i%5Cquad%5Clangle%20e%5Bx%2Fi%5D%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28f%20a%29%7D%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%26%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5Clangle%20e%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28def%20x%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%5Clangle%20v%2C%5CGamma%28x%29%20%3D%20%28v%2C%5Cbot%29%5Crangle%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5CGamma%28m%29%3D%28f%2C%5Ctop%29%5Cquad%5Clangle%20f%28e%29%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28m%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%26%0A%20%20%20%20%20%20%20%20%5Cend%7Baligned%7D
"\\begin{aligned}
            &\\frac{\\;}{\\langle x,\\Gamma\\rangle\\Downarrow\\Gamma(x)}
            &\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(macro x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) = (v,\\top)\\rangle}&  \\\\
            &\\frac{\\;}{\\texttt{(fn x e)}\\Downarrow\\lambda x.e}
            &\\frac{\\langle f,\\Gamma\\rangle\\Downarrow\\lambda x.e\\quad\\langle a,\\Gamma\\rangle\\Downarrow i\\quad\\langle e[x/i]\\rangle\\Downarrow v}{\\langle\\texttt{(f a)},\\Gamma\\rangle\\Downarrow v}&\\\\
            &\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(def x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) = (v,\\bot)\\rangle}
            &\\frac{\\Gamma(m)=(f,\\top)\\quad\\langle f(e),\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(m e)},\\Gamma\\rangle\\Downarrow v}&
        \\end{aligned}")  

## Symbol

Symbol expressions are expressions of the form `name`. They always
evaluate to the `value` of the def expression that defines `name`. If
`name` is not defined, they evaluate to
![\\bot](https://latex.codecogs.com/png.latex?%5Cbot "\\bot") instead.

## Function

Function expressions are expressions of the form `(fn name value)`. They
evaluate to a function
![\\lambda](https://latex.codecogs.com/png.latex?%5Clambda
"\\lambda")`name`.`value`. When applied, they perform the substitution
`value`\[`name`/`argument`\].

## Define

Def expressions are expressions of the form `(def name value)`. They
state that all symbols `name` evaluate to `value`, and evaluate to the
the `value` they define. Multiple def expressions with the same `name`
are invalid.

## Macro

Macro expressions are expressions of the form `(macro name value)`. They
state that all symbols `name` evaluate to `value`, and evaluate to the
value of `name`. When applied, macros evaluate `name` and apply it to
the expression encoding of `argument`, then evaluate the result.

## Apply

Apply expressions are expressions of the form `(value argument)`. If
`value` is a function, it performs application as described in
section [3.2](#subsec:function). If `value` is a macro, it performs
application as described in section [3.4](#subsec:macro)

# Encodings

``` matlab
;;; Booleans

(def true
  (fn x
    (fn _ x)))

(def false
  (fn _
    (fn x x)))
```

``` matlab
;;; Products

(def pair
  (fn first second
    (fn value
      (value first second))))

(def first
  (fn pair
    (pair true)))

(def second
  (fn pair
    (pair false)))
```

``` matlab
;;; Coproducts

(def left
  (fn value
    (fn first _
      (first value))))

(def right
  (fn value
    (fn _ second
      (second value))))

(def left?
  (fn either
    (either
      (fn _ true)
      (fn _ false))))

(def right?
  (fn either
    (either
      (fn _ false)
      (fn _ true))))
```

``` matlab
;;; Lists

(def nil (left false))

(def cons
  (fn car
    (fn cdr
      (right (pair car cdr)))))

(def car
  (fn value
    (list (fn x x) left)))

(def cdr
  (fn list
    (list (fn x x) right)))

(def nil? left?)
```

``` matlab
;;; Natural Numbers

(def 0 (left (fn x x)))
(def 0? left?)
(def inc right)
(def dec
  (fn nat
    (nat left (fn x x))))
```

``` matlab
;;; Chars

(def nat->char (fn x x))
(def char->nat (fn x x))
```

``` matlab
;;; Symbols

(def list->symbol (fn x x))
(def symbol->list (fn x x))
```

``` matlab
;;; Expressions

(def symbol? left?)
(def list? right?)
```
