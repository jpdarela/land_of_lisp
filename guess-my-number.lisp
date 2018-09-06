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



#|| CONDITIONALS ||#

(defun test-if (arg)
  "if form"
  (if arg                ;; condition
      'i-am-true       ;; Argument 1  eval with Truth
      'i-am-false))    ;; Argument 2  eval with nil

#|| NIL and recursion ||#

(defun my-length (list)
  "LISP is a list eater"
  (if list
      (1+ (my-length (cdr list)))
      0))

(defun conditionals ()

  (if (= ( + 2 4) 7)
      'equal
      'different)
  
  (if (= ( + 2 4) 6)
      'equal
      'different)

  (if '()
      'the-list-has-stuff
      'the-list-is-empty)

  (if '(1)
      'the-list-has-stuff
      'the-list-is-empty)

  (if (evenp 4)
      'true
      'false)

  (if (oddp 4)
      'odd
      'even)

  (if (oddp 5) 'true (/ 1 0)))


