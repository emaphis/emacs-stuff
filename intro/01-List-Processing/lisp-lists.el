;;; lisp-lists.el -- Lisp lsts practice

;;; Commentary:
;; practicing with Lisp lists.

;;; Code:

;; a list
'(rose
  violet
  daisy
  buttercup)

;; Numbers, Lists insid of Lists
'(+ 1 2)

;; A List with a list inside of it.
'(this list has (a list inside of it))

;;; Lisp Atoms
;; numbers, symbols, quoted strings are atoms

;; <TAB> key - automatically indents a line in a cursor
;; M-C-\     - automatically indents a region.
;; C-x C-e   - evaluate last sexp.

;;; Variables - symbol with a value attached to it.

fill-column ;; 70

;; message
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


;;; setting the value of a variable.

;; using set.
(defvar my-flowers "" "My list of flowers.")
(set 'my-flowers '(rose violet daisy buttercup))
;my-flowers

;; using setq - don't have to quote the first argument.
(defvar my-carnivors "" "My list of carnivores.")
(setq my-carnivors '(lion tiger leopard))

;; multiple values
(defvar my-trees "" "My list of trees.")
(defvar my-herbivors "" "My list of herbivors.")

(setq my-trees '(pine fir oak maple)
      my-herbivors '(gazelle antelope zebra))

;; counting
(defvar my-counter 0 "My counter.")
(setq my-counter 0)

(setq my-counter (+ my-counter 1))

;counter


(provide 'lisp-lists)
;;; lisp-lists.el ends here
