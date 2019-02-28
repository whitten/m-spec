;;; Booleans

(def true
  (fn x
    (fn "" x)))

(def false
  (fn ""
    (fn x x)))