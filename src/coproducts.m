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