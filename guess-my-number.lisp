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


;; defining local variables and functions

(defun local_variables ()
  "command let usage example"
  (let ((a 5)
    (b 6)
    (c 7))
    (+ a b c)))

(defun local_functions ()
  "command flet usage - single function"
  (flet ((f (n)
	   (+ n 10)))
    (f 5)))

(defun local_functions_n ()
  "command flet usage - single function"
  (flet ((f (n)
	   (+ n 10))
	 (g (n)
	   (+ n 15)))
    (f (g 5))))

(defun local_functions_o ()
  "command labels usage example"
  (labels ((a (n)        
	     (+ n 5))
	   (b (n)
	     (+ (a n) 6)))
    (b (a 10))))

;;   ---------
;;  |  yupi   |
;;   ---------
;;        \   ^__^
;;         \  (oo)\_________
;;   \|/      (__)\         )\/\
;;               ||-------w |
;;          \|/  ||        ||
;;  \|/__________________________

