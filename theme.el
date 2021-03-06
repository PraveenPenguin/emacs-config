(when (eq window-system 'x)
  (load-theme 'monokai t))

(set-face-attribute 'default nil :family "Monospace" :height 90)

(defun sjihs-disable-bold-font ()
  (interactive)
  (mapc
   (lambda (face)
     (set-face-attribute face nil :weight 'normal))
   (face-list)))
