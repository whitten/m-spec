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