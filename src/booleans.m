;;; Booleans

(def true
  (fn x
    (fn _ x)))

(def false
  (fn _
    (fn x x)))