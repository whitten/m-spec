;;; Products

(def pair
  (fn first second
    (fn value
      (value first second))))

(def first
  (fn pair
    (pair true)))

(def second
  (fn pair
    (pair false)))