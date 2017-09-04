;;; buffers.el -- Practice evaluating expressions

;;; Commentary:
;;  Practice evaluating functions.

;;; Code:

;;; Buffer names
(buffer-name)  ; "buffers.el"
(buffer-file-name)
;; "c:/src/emacs-stuff/intro/02-Practicing-Evaluation/buffers.el"

;;; Getting buffers.
;; get current buffer object.
(current-buffer) ; #<buffer buffers.el>

;; return last recently used buffer object
(other-buffer) ; #<buffer notes.org>

;; Switching buffers.
(switch-to-buffer (other-buffer))

;; Buffer size and location of point.
(buffer-size) ; 582

(point) ; 547 ; return the location of point

(point-min) ; 1


(provide 'buffers)
;;; buffers.el ends here
