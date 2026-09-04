;;; buffers.el -- Practice evaluating expressions

;;; Commentary:
;;  Practice evaluating functions.

;;; Code:

;; 2 Practicing Evaluation

;; 2.1 Buffer names

(buffer-name)
;; "buffers.el"

(buffer-file-name)
;; "c:/src/emacs-stuff/intro/02-Practicing-Evaluation/buffers.el"

;; 2.2 Getting Buffers.

;; Return the current buffer object.
(current-buffer)
;; #<buffer buffers.el>

;; return last recently used buffer object
(other-buffer)
;; #<buffer notes.org>


;; 2.3 Switching Buffers.

(switch-to-buffer (other-buffer))


;; 2.4 Buffer size and location of point.

;; Return current buffer size
(buffer-size)
;; 697

;; return the current possition of the buffer - the location of point
(point)
;; 597

(point-min)
;; 1

(point-max)
;; 788


(provide 'buffers)
;;; buffers.el ends here
