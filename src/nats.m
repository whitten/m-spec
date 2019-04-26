;;; Natural Numbers

(def 0 (fn f x x))
(def 1 (fn f x (f x)))

(def 0? n
  (fn n
    (n (fn _ true) false)))

(def inc
  (fn n
    (fn f x
      (f (n f x)))))