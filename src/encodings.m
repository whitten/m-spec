;;; Functions

(def id (fn x x))

(def compose
  (fn f g
    (fn x
      (ap f g x))))

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
      (ap value first second))))

(def first
  (fn pair
    (ap pair true)))

(def second
  (fn pair
    (ap pair false)))

;;; Coproducts

(def left
  (fn value
    (fn first ""
      (ap first value))))

(def right
  (fn value
    (fn "" second
      (ap second value))))

(def left?
  (fn x
    (ap x (ap const true) (ap const false))))

(def right?
  (fn x
    (ap x (ap const false) (ap const true))))

;;; Lists

(def nil (ap left false))
(def cons (ap compose right pair))

(def car
  (fn value
    (ap list id left)))

(def cdr
  (fn list
    (ap list id right)))

(def nil? left?)

;;; Natural Numbers

(def 0 ())
(def 0? nil?)
(def inc (ap cons ()))
(def dec cdr)

;;; Chars

(def nat->char id)
(def char->nat id)

;;; Symbols

(def list->symbol id)
(def symbol->list id)

;;; Expressions

(def symbol? left?)
(def list? right?)