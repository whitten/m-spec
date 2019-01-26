;;; Functions

(def id (lambda x x))

(def compose
  (lambda f g
    (lambda x
      (f g x))))

(def const
  (lambda x
    (lambda "" x)))

;;; Booleans

(def true (id const))
(def false (const id))

;;; Products

(def pair
  (lambda first second
    (lambda value
      (value first second))))

(def first
  (lambda pair
    (pair true)))

(def second
  (lambda pair
    (pair false)))

;;; Coproducts

(def left
  (lambda value
    (lambda first ""
      (first value))))

(def right
  (lambda value
    (lambda "" second
      (second value))))

(def left?
  (lambda x
    (x (const true) (const false))))

(def right?
  (lambda x
    (x (const false) (const true))))

;;; Lists

(def nil (left false))
(def cons (compose right pair))

(def car
  (lambda value
    (list id left)))

(def cdr
  (lambda list
    (list id right)))

(def nil? left?)

;;; Natural Numbers

(def 0 ())
(def 0? nil?)
(def inc (cons ()))
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