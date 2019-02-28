;;; Natural Numbers

(def 0 (left id))
(def 0? left?)
(def inc right)
(def dec
  (fn nat
    (nat left id)))