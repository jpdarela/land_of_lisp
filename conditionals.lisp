;; this file contains the demonstrations based on the book 

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

;; ---------------------------------

(defparameter *number-was-odd* nil)
(defparameter *number-is-odd* nil)

(defun test-progn (number)  
  (if (oddp number)
      (progn (setf *number-was-odd* t)
	     'odd-number)
      (progn (setf *number-was-odd* nil)
	     'even-number)))

(defun test-when (number)
  (when (oddp number)
    (setf *number-is-odd* t)
    'odd-number)
  (when (evenp number)
    (setf *number-is-odd* nil)
    'even-number))

(defun test-unless-1 (number)
  (unless (oddp number)
    (setf *number-is-odd* nil)
    'even-number))

(defun test-unless-2 (number)
  (unless (evenp number)
    (setf *number-is-odd* t)
    'odd-number))

(defparameter *arch-enemy* nil)
(defun pudding-eater (person)
  (cond ((eq person 'henry) (setf *arch-enemy* 'lisp-alien)
	 '(curse your lisp alien - you ate my pudding))

	((eq person 'johnny) (setf *arch-enemy* 'old-johnny)
	 '(i hope ypu chocked on my pudding johnny))

	(t (setf *arch-enemy* person)
	   '(why you eat my pudding stranger))))


(defparameter *a* 0)
(defun test-cond (number)
  (cond ((> number 1) (setf *a* number) (princ "Greater than One"))
	((< number 1) (setf *a* number) (princ "Smaller than One"))
	(t (setf *a* number) (princ "Equal to One"))))





