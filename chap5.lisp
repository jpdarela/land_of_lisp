(defun say-hello_awful()
  (print "Please type your name: ")
  (let ((name (read)))
    (print "Nice to meet you ")
    (prin1 name)))


;; read function in smart for objects types
(defun add-five()
  (print "Please, type a number:")
  (let ((num (read)))
    (print "When I add 5 I get:")
    (prin1 (+ 5  num))))


(defun say-hello()
  (princ "Please, type your name: ")
  (let ((name (read-line)))
    (princ "Nice to meet you, ")
    (princ name)))
