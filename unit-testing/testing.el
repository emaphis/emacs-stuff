;;; testing.el -- An Elisp file testing

;;; Commentary:
;; experiments in elisp unit testing

;;; Code:

(ert-deftest example-test ()
  (should (= (+ 9 2) 11)))

(ert-deftest addition-test ()
  "Test addition"
  (should (= (+ 1 2) 4)))

(defun add (num1 num2)
  "Add two given numbers NUM1 and NUM2."
  (+ num1 num2))

(defun add3 (num)
  "Add 3 to a given number NUM."
  (add 3 num))

(ert-deftest pp-test-quote ()
  "Test the rendering of 'quote' symbols in 'pp-to-string'"
  (should (equal (pp-to-string '(quote quote)) "'quote"))
  (should (equal (pp-to-string '((quote a) (quote b)))  "('a 'b)\n"))
  (should (equal (pp-to-string '('a 'b))  "('a 'b)\n")))


(provide 'testing)
;;; testing.el ends here
