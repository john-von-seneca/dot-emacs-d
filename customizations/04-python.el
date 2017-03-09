;; python mode hooks

;; Python editing
(add-hook 'python-mode-hook
		  (lambda ()
			(setq indent-tabs-mode t)
			(setq tab-width 4)
			(setq python-indent 4)
			(setq python-indent-offset 4)))

(require 'elpy)
(elpy-enable)
;; (elpy-use-ipython)

(add-hook 'elpy-mode-hook (lambda () (flymake-mode -1)))
(add-hook 'python-mode-hook (lambda () (flymake-mode -1)))
(add-hook 'python-mode-hook (lambda () (electric-pair-mode 1)))

;; require 'python-mode)

										; use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
										; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
	  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

										; switch to the interpreter after executing code
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
										; don't split windows
(setq py-split-windows-on-execute-p nil)
										; try to automagically figure out indentation
;; (setq py-smart-indentation -1)


(defun python-mode-keys ()
  "Modify keymaps used by `html-mode'."
  (local-set-key (kbd "C-c C-b") 'python-shell-send-buffer))

(define-key
  python-mode-map
  (kbd "C-c b")
  'python-shell-send-buffer)
(define-key
  python-mode-map
  (kbd "C-c h")
  'python-shell-send-region)

(define-key
  python-mode-map
  (kbd "C-c C-x l")
  (lambda () (interactive)  (insert "lambda ")))

;; https://github.com/gabrielelanaro/emacs-for-python
(load-file "~/repos/gabrielelanaro/emacs-for-python/epy-init.el")
