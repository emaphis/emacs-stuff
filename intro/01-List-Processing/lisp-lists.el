;;; lisp-lists.el -- Lisp lsts practice

;;; Commentary:
;; practicing with Lisp lists.

;;; Code:

;;; 1.1 Lisp Lists

;; a list
'(rose
  violet
  daisy
  buttercup)

;; atams
37 511 1729
'+ 'foo 'forward-line

;; Strings are atorms
'(this list includes "text between quotation marks")

;; Numbers inside of lisps
'(+ 1 2)

;; A List with a list inside of it.
'(this list has (a list inside of it))

;;; 1.1.1 Lisp Atoms
;; numbers, symbols, quoted strings are atoms

;; numbers
3
33

;; Symbols
'+
'a
'33

;; Empty list
'()

;; Quoted strings'
"strings"


;; 1.1.2 Whitepace in Lists

'(this list
   looks like this)

;; same as
'(this list looks like this)


;; GNU Emacs Helps You Type Lists

;; <TAB> key - automatically indents a line in a cursor
;; M-C-\     - automatically indents a region.


;; 1.2 Run a Program

;; C-x C-e   - evaluate last sexp.

(+ 2 2) ; => 4

'(this is a quoted list)
;; => '(this is a quoted list)


;; Generate an Error Message

(this is an unquoted list)
;; *Backtrace*
;;Debugger entered--Lisp error: (void-function this)


;;;  1.7 Variables - symbol with a value attached to it.

fill-column  ;; 80

;; 1.7.1 Error Message for a Symbol Without a Function

(fill-column)
;;Debugger entered--Lisp error: (void-function fill-column)


;; 1.7.2 Error Message for a Symbol Without a Value

(+ 2 2)
;; Debugger entered--Lisp error: (void-variable +)


;; 1.8 Arguments

;; 2 and 2 are arguments
(+ 2 2)


;; 1.8.1 Arguments' Data Types

;; two strings
(concat "abc" "def")
;;"abcdef"

;; string and two integers
(substring "The quick brown fox jumped." 16 19)
;; "fox"


;; 1.8.2 An Argument as the Value of a Variable or List

;; fill-column returns an int.
(+ 2 fill-column)
;; 82

;; three strings
(concat "The " (number-to-string (+ 2 fill-column)) " red foxes.")
;; "The 82 red foxes."


;; 1.8.3 Variable Number of Arguments

(+)
;; 0

(*)
;; 1

(+ 3)
;; 3

(* 3)
;;3

(+ 3 4 5)
;; 12

(* 3 4 5)
;; 60


;; 1.8.4 Using the Wrong Type Object as an Argument

(+ 2 'hello)
;;Debugger entered--Lisp error: (wrong-type-argument number-or-marker-p hello)


;; 1.8.5 The Message Function
;; The message appears in the echo area

(message "This message appears in the echo area!")
(message "the name of the buffer is: %s." (buffer-name))
(message "The value of fill-column is %d." fill-column)

;; whimsical message
(message "There are %d %s in the office"
         (- fill-column 14) "pink elephants")

(message "He saw %d %s"
         (- fill-column 30)
         (concat "red "
                 (substring
                  "The quick brown foxes jumped." 16 21)
                 " leaping."))


;;; 1.9 setting the value of a variable.

;; using set.
(defvar my-flowers "" "My list of flowers.")
(set 'my-flowers '(rose violet daisy buttercup))
;my-flowers

;; using setq - don't have to quote the first argument.
(defvar flowers "" "My list of flowers.")
(setq flowers '(rose violet daisy buttercup))
flowers
;;(rose violet daisy buttercup)

(defvar my-carnivors "" "My list of carnivores.")
(setq my-carnivors '(lion tiger leopard))

;; multiple values
(defvar my-trees "" "My list of trees.")
(defvar my-herbivors "" "My list of herbivors.")

(setq my-trees '(pine fir oak maple)
      my-herbivors '(gazelle antelope zebra))

;; 1.9.2 Counting

(defvar my-counter 0 "My counter.")
(setq my-counter 0)                  ; Let’s call this the initializer.

(setq my-counter (+ my-counter 1))   ; This is the incrementer.

my-counter                           ; This is the counter.
;; 1


(provide 'lisp-lists)
;;; lisp-lists.el ends here
