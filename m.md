# Syntax

  
![\\begin{aligned}
&\\texttt{character} &=&\\;\\mathbb{C}\\supseteq\\texttt{(special +
newline + whitespace)}\\\\
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
\\end{aligned}](https://latex.codecogs.com/png.latex?%5Cbegin%7Baligned%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bcharacter%7D%20%26%3D%26%5C%3B%5Cmathbb%7BC%7D%5Csupseteq%5Ctexttt%7B%28special%20%2B%20newline%20%2B%20whitespace%29%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bspecial%7D%20%20%20%26%3D%26%5C%3B%5C%7B%5Ctexttt%7B%60%3B%27%7D%2C%5Ctexttt%7B%60%22%27%7D%2C%5Ctexttt%7B%60%28%27%7D%2C%5Ctexttt%7B%60%29%27%7D%5C%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bcomment%7D%20%20%20%26%3D%26%5C%3B%5Ctexttt%7B%60%3B%27%7D%5Cquad%5Ctexttt%7B%28character%20-%20newline%29%2A%7D%5Cquad%5Ctexttt%7Bnewline%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bsymbol%7D%20%20%20%20%26%3D%26%5C%3B%5Ctexttt%7B%28character%20-%20special%20-%20whitespace%29%2A%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%22%27%7D%5Cquad%5Ctexttt%7Bcharacter%2A%7D%5Cquad%5Ctexttt%7B%60%22%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%22%22%27%7D%5Cquad%5Ctexttt%7Bcharacter%2A%7D%5Cquad%5Ctexttt%7B%60%22%22%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bexpression%7D%26%3D%26%5C%3B%5Ctexttt%7Bsymbol%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%20%26%7C%26%5C%3B%5Ctexttt%7B%60%28%27%7D%5Cquad%5Ctexttt%7Bexpression%2A%7D%5Cquad%5Ctexttt%7B%60%29%27%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Ctexttt%7Bprogram%7D%20%20%20%26%3D%26%5C%3B%5Ctexttt%7Bexpression%2A%7D%0A%20%20%20%20%20%20%20%20%5Cend%7Baligned%7D
"\\begin{aligned}
            &\\texttt{character} &=&\\;\\mathbb{C}\\supseteq\\texttt{(special + newline + whitespace)}\\\\
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
backslash, a newline character, and a whitespace character. For
consistency, all M code samples in this specification use the ASCII
character set.

## Specials

The four special characters are reserved for use in other productions.
This is done to ensure that symbols such as `this()` do not include any
special characters which are meant be used for other syntactic
constructs. Note that the backslash is not included in the list of
special characters as it is only used inside of a literal symbol.

## Comments

Comments in M begin with a semicolon and last until the end of the line.
They are ignored and discarded like whitespace and newlines, as they are
only intended to be used for explaining code.

## Symbols

Symbols in M have two forms, inline and literal. Inline symbols are
strings terminated by whitespace or a special symbol, and should be used
by default. Literal symbols are strings surrounded by one or two quotes,
and should only be used when a symbol is impossible to represent using
inline symbols (for example, the symbol `"()"`).

## Expressions

Expressions in M have two forms, symbols and lists. Symbol expressions
are identical to symbols defined in section [1.4](#subsec:symbols).
Lists expressions are simply lists of expressions surrounded by matching
parentheses.

## Programs

M programs are lists of expressions. It is unspecified how these
expressions are stored, so they can be in memory, in a single file, in
multiple files, on the internet, or any other method which is
convenient.

# Semantics

  
![\\begin{aligned}
\\text{(Symbol)}\\;&\\frac{\\;}{\\langle
x,\\Gamma\\rangle\\Downarrow\\Gamma(x)}
&\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(macro
x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) =
(v,\\top)\\rangle}&\\;\\text{(Macro)}\\\\
\\text{(Function)}\\;&\\frac{\\;}{\\texttt{(fn x e)}\\Downarrow\\lambda
x.e}
&\\frac{\\langle f,\\Gamma\\rangle\\Downarrow\\lambda x.e\\quad\\langle
a,\\Gamma\\rangle\\Downarrow i\\quad\\langle e\[x/i\]\\rangle\\Downarrow
v}{\\langle\\texttt{(f a)},\\Gamma\\rangle\\Downarrow
v}&\\;\\text{(Apply-Function)}\\\\
\\text{(Define)}\\;&\\frac{\\langle e,\\Gamma\\rangle\\Downarrow
v}{\\langle\\texttt{(def x e)},\\Gamma\\rangle\\Downarrow\\langle
v,\\Gamma(x) = (v,\\bot)\\rangle}
&\\frac{\\Gamma(m)=(f,\\top)\\quad\\langle
f(e),\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(m
e)},\\Gamma\\rangle\\Downarrow v}&\\;\\text{(Apply-Macro)}
\\end{aligned}](https://latex.codecogs.com/png.latex?%5Cbegin%7Baligned%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%5Ctext%7B%28Symbol%29%7D%5C%3B%26%5Cfrac%7B%5C%3B%7D%7B%5Clangle%20x%2C%5CGamma%5Crangle%5CDownarrow%5CGamma%28x%29%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5Clangle%20e%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28macro%20x%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%5Clangle%20v%2C%5CGamma%28x%29%20%3D%20%28v%2C%5Ctop%29%5Crangle%7D%26%5C%3B%5Ctext%7B%28Macro%29%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%5Ctext%7B%28Function%29%7D%5C%3B%26%5Cfrac%7B%5C%3B%7D%7B%5Ctexttt%7B%28fn%20x%20e%29%7D%5CDownarrow%5Clambda%20x.e%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5Clangle%20f%2C%5CGamma%5Crangle%5CDownarrow%5Clambda%20x.e%5Cquad%5Clangle%20a%2C%5CGamma%5Crangle%5CDownarrow%20i%5Cquad%5Clangle%20e%5Bx%2Fi%5D%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28f%20a%29%7D%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%26%5C%3B%5Ctext%7B%28Apply-Function%29%7D%5C%5C%0A%20%20%20%20%20%20%20%20%20%20%20%20%5Ctext%7B%28Define%29%7D%5C%3B%26%5Cfrac%7B%5Clangle%20e%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28def%20x%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%5Clangle%20v%2C%5CGamma%28x%29%20%3D%20%28v%2C%5Cbot%29%5Crangle%7D%0A%20%20%20%20%20%20%20%20%20%20%20%20%26%5Cfrac%7B%5CGamma%28m%29%3D%28f%2C%5Ctop%29%5Cquad%5Clangle%20f%28e%29%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%7B%5Clangle%5Ctexttt%7B%28m%20e%29%7D%2C%5CGamma%5Crangle%5CDownarrow%20v%7D%26%5C%3B%5Ctext%7B%28Apply-Macro%29%7D%0A%20%20%20%20%20%20%20%20%5Cend%7Baligned%7D
"\\begin{aligned}
            \\text{(Symbol)}\\;&\\frac{\\;}{\\langle x,\\Gamma\\rangle\\Downarrow\\Gamma(x)}
            &\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(macro x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) = (v,\\top)\\rangle}&\\;\\text{(Macro)}\\\\
            \\text{(Function)}\\;&\\frac{\\;}{\\texttt{(fn x e)}\\Downarrow\\lambda x.e}
            &\\frac{\\langle f,\\Gamma\\rangle\\Downarrow\\lambda x.e\\quad\\langle a,\\Gamma\\rangle\\Downarrow i\\quad\\langle e[x/i]\\rangle\\Downarrow v}{\\langle\\texttt{(f a)},\\Gamma\\rangle\\Downarrow v}&\\;\\text{(Apply-Function)}\\\\
            \\text{(Define)}\\;&\\frac{\\langle e,\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(def x e)},\\Gamma\\rangle\\Downarrow\\langle v,\\Gamma(x) = (v,\\bot)\\rangle}
            &\\frac{\\Gamma(m)=(f,\\top)\\quad\\langle f(e),\\Gamma\\rangle\\Downarrow v}{\\langle\\texttt{(m e)},\\Gamma\\rangle\\Downarrow v}&\\;\\text{(Apply-Macro)}
        \\end{aligned}")  

## Symbol

Symbol expressions are expressions of the form `name`. They always
evaluate to the `value` of the def expression that defines `name`. If
`name` is not defined, they evaluate to
![\\bot](https://latex.codecogs.com/png.latex?%5Cbot "\\bot").

## Function

Function expressions are expressions of the form `(def name value)`.
They evaluate to a function
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
section [2.2](#subsec:function). If `value` is a macro, it performs
application as described in section [2.4](#subsec:macro)

# Encodings

``` matlab
;;; Functions

(def id (fn x x))

(def const
  (fn x
    (fn "" x)))
```

``` matlab
;;; Booleans

(def true
  (fn x
    (fn "" x)))

(def false
  (fn ""
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
    (fn first ""
      (first value))))

(def right
  (fn value
    (fn "" second
      (second value))))

(def left?
  (fn either
    (either
      (const true)
      (const false))))

(def right?
  (fn either
    (either
      (const false)
      (const true))))
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
    (list id left)))

(def cdr
  (fn list
    (list id right)))

(def nil? left?)
```

``` matlab
;;; Natural Numbers

(def 0 (left id))
(def 0? left?)
(def inc right)
(def dec
  (fn nat
    (nat left id)))
```

``` matlab
;;; Chars

(def nat->char id)
(def char->nat id)
```

``` matlab
;;; Symbols

(def list->symbol id)
(def symbol->list id)
```

``` matlab
;;; Expressions

(def symbol? left?)
(def list? right?)
```

# Reference Implementation

## Parser

``` matlab
()
```

## Interpreter

``` matlab
()
```

## Compiler

``` matlab
()
```
