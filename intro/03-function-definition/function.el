;;; function.el -- Defining Elisp functions
S
;;; Commentary:
;;  defining Elisp functions.


;;; Code:

;; Primitive functions are defined in C code of the interpreter.

;; The defun macro

(defun multiply-by-seven1 (number)
  "Multiply NUMBER by seven."
  (* 7 number))

(multiply-by-seven1 3) ; 21

;; Interactive version
(defun multiply-by-seven2 (number)
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

;; C-u 3 M-x multiply-by-seven2 <RET>
;; c-u 4 <Some key-chord multiply-by-seven bound to>


;;; 'let' expression - creates local definitions.

;; example,
(let ((zebra "stripes")
      (tiger "fierce"))
  (message "One kind of animal has %s and another is %s"
           zebra tiger))
;; "One kind of animal has stripes and another is fierce"

;; Uninitialized let variables.
(let ((birch 3)
      pine
      fir
      (oak 'some))
  (message "Here are %d variables with %s, %s, and %s values."
           birch pine fir oak))
;; "Here are 3 variables with nil, nil, and some values."


;;; if expression
(if (> 5 4)
    (message "5 is greater than 4!"))

(defun type-of-animal1 (characteristic)
  "Print message in echo area depending on CHARACTERISTIC.
If the CHARACTERISTIC is the string \"fierce\",
then warn of a tiger"

  (if (equal characteristic "fierce")
      (message "It is a tiger!")))

(type-of-animal1 "fierce") ; "It is a tiger!"
(type-of-animal1 "striped") ; nil


;;; if-then-else expression
(if (> 4 5)
    (message "4 falsely greater than 5!")
  (message "4 is not greater than 5!"))
;; "4 is not greater than 5!"

(defun type-of-animal2 (characteristic)
  "Print message in echo area depending on CHARACTERISTIC.
If the CHARACTERISTIC is the string \"fierce\",
then warn of a tiger; else say it is not fierce."
  (if (equal characteristic "fierce")
      (message "It is a tiger!")
    (message "It is not fierce.")))


(type-of-animal2 "fierce") ; "It is a tiger!"
(type-of-animal2 "striped") ; "It is not fierce."


;;; save-excursion
(save-excursion
  first-expression
  second-expression
  ...
  last-epression)

(let (varlist)
  (save-excursion
    body...))


;;; Exercises

(defun double-1 (number)
  "Multiplies NUMBER by 2."
  (* 2 number))

(double-1 0) ; 0
(double-1 4) ; 8

(defun double-2 (number)
  "Interactive function that multiplies NUMBER by 2."
  (interactive "p")
  (let ((answer (* 2 number)))
    (message "%d doubled is %d "
             number answer)))
;; 5 doubled is 10


(provide 'function)
;;; function.el ends here
