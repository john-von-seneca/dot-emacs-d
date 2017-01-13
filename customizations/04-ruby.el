;; ruby stuff

;;(smart-tabs-advice ruby-indent-line ruby-indent-level)
(defun ruby-insert-end ()
  "Insert \"end\" at point and reindent current line."
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))

(setq ruby-deep-indent-paren nil)
