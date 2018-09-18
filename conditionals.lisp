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

(defun pudding-eater-2 (person)
  (case person
    ((henry) (setf *arch-enemy* 'lisp-alien)
     '(Curse your Stupid Alien - you ate my pudding))
    ((johnny) (setf *arch-enemy* 'old-johnny)
     '(i hope you chocked on my pudding johnny))
    (otherwise (setf *arch-enemy* person)
	       '(why you eat my pudding stranger))))


(defparameter *is-odd* '())
(defparameter *is-even* '())

(defun cond_tricks (number)
  (or (evenp number) (setf *is-odd* t))
  (or (oddp number) (setf *is-even* t)))

(defun cond_tricks-2 (number)
  (and (evenp number) (setf *is-even* t))
  (and (oddp number) (setf *is-odd* t)))

(defparameter *condition* nil)

(defun test-and-trick (c)
  "shortcut Boolean evaluation is the key to understand this idiom"
  (setf *condition* c)
  (and *condition* (princ "Saving something -") (princ " do something more")))

(defun test-or-trick (c)
  "shortcut Boolean evaluation is the key to understand this idiom"
  (setf *condition* c)
  (or *condition* (princ "do something")))

(find-if #'null '(1 2 3 4 nil))
(find-if #'oddp '(6 2 4 5))

#|| 

Comparing stuff

1 - Use eq to compare symbols
2 - Use equal for everthing else
3 - eql  = eq + handles comparisons between numbers ans characters
4 - equalp = equal improved. Can handle comparisons between integers
    and floats and upper and lower case strings 

||#

(eq 'apple 'apple)
(eq (cons 1 (cons 2 (cons 3 '()))) '(1 2 3))
(eql 1 1)
(equal (cons 1 (cons 2 (cons 3 '()))) '(1 2 3))
(equalp "Bob" "bob")


(defparameter *apple* 'apple)
(cond ((eq *apple* 'apple) 'apple)
      ((eq *apple* 'orange) 'orange)
      (t 'yupi))


