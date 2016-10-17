;;; customization -- Emacs customization

;;; Commentary:
;; Just a few customizations, that's all

;;; Code:

(global-set-key "\C-x\C-n" 'other-window)
(global-set-key "\C-x\C-p" 'other-window-backward)

(defun other-window-backward (&optional n)
  "Select Nth the previous window."
  (interactive "p")
  (other-window (if n (- n) -1)))

;; Line at a time scrolling
(defalias 'scroll-ahead 'scroll-up)
(defalias 'scroll-behind 'scroll-down)

(defun scroll-n-lines-ahead (&optional n)
  "Scroll ahead N lines (1 by default)."
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n)))

(defun scroll-n-lines-behind (&optional n)
  "Scroll behind N lines (1 by default)."
  (interactive)
  (scroll-behind (prefix-numeric-value n)))

(global-set-key "\C-q" 'scroll-n-lines-behind)
(global-set-key "\C-z" 'scroll-n-lines-ahead)
(global-set-key "\C-x\C-q" 'quoted-insert)

;; Other cursor and text motion commands
(defun point-to-top ()
  "Put point on top line of window."
  (interactive)
  (move-to-window-line 0))

(global-set-key "\M-," 'point-to-top)

(defun point-to-bottom ()
  "Put point at beginning of last visisble line."
  (interactive)
  (move-to-window-line -1))

(global-set-key "\M-." 'point-to-bottom)

(provide 'customization)
;;; customization.el ends here
