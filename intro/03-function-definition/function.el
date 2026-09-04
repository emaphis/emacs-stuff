;;; function.el -- Defining Elisp functions - -*- lexical-binding: t -*-
S
;;; Commentary:
;;  defining Elisp functions.

;;; Code:

;;; 3 How to Write Function Definitions


;; Primitive functions are defined in C code of the interpreter.


;; 3.1 The defun Macro

(defun multiply-by-seven1 (number)
  "Multiply NUMBER by seven."
  (* 7 number))

(multiply-by-seven1 3)
;; 21

;; 3.2 Install a Function Definition

;; C-x C-e

;; 3.2.1 Change a Function Definition

(defun multiply-by-seven2 (number)      ; Second version
  "Multiply NUMBER by seven."
  (+ number number number number number number number))

(multiply-by-seven2 3)
;; 21


;; 3.3 Make a Function Interactive

;; Interactive version
(defun multiply-by-seven3 (number)
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

;; C-u 3 M-x multiply-by-seven2 <RET>
;; The result is 21

;; c-u 4 <Some key-chord multiply-by-seven bound to>


;; 3.3.1 An Interactive multiply-by-seven

;; (interactive "p")
;; Means pass the prefix argument to the function


;; 3.4  Different Options for 'interactive'

;; (See Section “Code Characters for interactive” in The GNU Emacs Lisp Reference Manual.


;; 3.5 Install Code Permanently

;; .emacs
;; ~/.emaca.d/init.el

;; (load "xxx.el)


;;; 3.6 'let' expression - creates local definitions.

;; 3.6.1 The Parts of a 'let' Expression

;; (let varlist body...)

;; (let ((variable value)
;;       (variable value)
;;       ...)
;;   body...)

;; 3.6.3 Sample 'let' Expression

(let ((zebra "stripes")
      (tiger "fierce"))
  (message "One kind of animal has %s and another is %s"
           zebra tiger))
;; "One kind of animal has stripes and another is fierce"


;; 3.6.3 Uninitialized Variables in a 'let' Statement

(let ((birch 3)
      pine
      fir
      (oak 'some))
  (message "Here are %d variables with %s, %s, and %s values."
           birch pine fir oak))
;; "Here are 3 variables with nil, nil, and some values."


;; 3.6.4 How 'let' Binds Variables

;;;-*- lexical-binding: t -*-

;; Example of Lexical vs. Dynamic Binding

(setq x 0)

(defun getx ()
  x)

(setq x 1)

(let ((x 2))
  (getx))


;; Dynamic binding

(defvar x)  ;; Use dynamic binding for 'x'.

(setq x 0)

(defun getx ()
  x)

(setq x 1)

(let ((x 2))
  (getx))



;; 3.7 The 'if' Special Form

(if (> 5 4)
    (message "5 is greater than 4!"))
;; "5 is greater than 4!"

(defun type-of-animal1 (characteristic)
  "Print message in echo area depending on CHARACTERISTIC.
If the CHARACTERISTIC is the string \"fierce\",
then warn of a tiger"
  (if (equal characteristic "fierce")
      (message "It is a tiger!")))

(type-of-animal1 "fierce")
;; "It is a tiger!"

(type-of-animal1 "striped")
;; nil

;; 3.7.1 The 'type-of-animal' Function in Detail


;; 3.8 'if-then-else' Expression

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


(type-of-animal2 "fierce")
;; "It is a tiger!"

(type-of-animal2 "striped")
;; "It is not fierce."


;; 3.9 Truth and Falsehood in Emacs Lisp

t

nil
()

;; Examples

(if 4
    'true
  'false)
;; true

(if nil
    'true
  'false)
;; false

(if ()
    'true
  'false)
;; false


;; 3.10 'save-excursion' Special Form

;; 3.10.1 Template for a 'save-excursion' Expression

(save-excursion
  first-expression
  second-expression
  ...
  last-epression)

(let (varlist)
  (save-excursion
    body...))


;;; 3.12 Exercises

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
