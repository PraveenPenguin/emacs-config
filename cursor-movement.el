(defun sjihs-move-line-down ()
  (interactive)
  (let ((col (current-column)))
    (save-excursion
      (forward-line)
      (transpose-lines 1))
    (forward-line)
    (move-to-column col)))
(global-set-key (kbd "C-S-<up>") 'sjihs-move-line-up)

(defun sjihs-move-line-up ()
  (interactive)
  (let ((col (current-column)))
    (transpose-lines 1)
    (forward-line -2)
    (move-to-column col)))
(global-set-key (kbd "C-S-<down>") 'sjihs-move-line-down)

(defun sjihs-open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))
(global-set-key (kbd "C-RET") 'sjihs-open-line-below)

(defun sjihs-open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1))
(global-set-key (kbd "C-S-RET") 'sjihs-open-line-above)