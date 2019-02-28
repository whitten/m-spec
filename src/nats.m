;;; Natural Numbers

(def 0 (left (fn x x)))
(def 0? left?)
(def inc right)
(def dec
  (fn nat
    (nat left (fn x x))))