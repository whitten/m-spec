;;; Lists

(def nil (left false))

(def cons
  (fn car
    (fn cdr
      (right (pair car cdr)))))

(def car
  (fn value
    (list (fn x x) left)))

(def cdr
  (fn list
    (list (fn x x) right)))

(def nil? left?)