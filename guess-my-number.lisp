;; Guess my number game from Land of LISP book

(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number()
  (ash (+ *small* *big*) -1))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *big* 100)
  (defparameter *small* 1)
  (guess-my-number))



;;   ---------
;;  | foda-se |
;;   ---------
;;        \   ^__^
;;         \  (oo)\__________
;;   \|/      (__)\         )\/\
;;               ||-------w |
;;          \|/  ||        ||
;;  \|/__________________________

