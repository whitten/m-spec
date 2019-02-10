;;; Functions

(def id (fn x x))

(def compose
  (fn f g
    (fn x
      (f g x))))

(def const
  (fn x
    (fn "" x)))

;;; Booleans

(def true
  (fn x
    (fn "" x)))

(def false
  (fn ""
    (fn x x)))

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

;;; Lists

(def nil (left false))
(def cons (compose right pair))

(def car
  (fn value
    (list id left)))

(def cdr
  (fn list
    (list id right)))

(def nil? left?)

;;; Natural Numbers

(def 0 (left id))
(def 0? left?)
(def inc right)
(def dec
  (fn nat
    (nat left id)))

;;; Chars

(def nat->char id)
(def char->nat id)

;;; Symbols

(def list->symbol id)
(def symbol->list id)

;;; Expressions

(def symbol? left?)
(def list? right?)