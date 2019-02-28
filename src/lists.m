;;; Lists

(def nil (left false))

(def cons
  (fn car
    (fn cdr
      (right (pair car cdr)))))

(def car
  (fn value
    (list id left)))

(def cdr
  (fn list
    (list id right)))

(def nil? left?)