;;(smart-tabs-advice ruby-indent-line ruby-indent-level)

(defun describe-last-function()
  (interactive)
  (describe-function last-command))

(defun ruby-insert-end ()
  "Insert \"end\" at point and reindent current line."
  (interactive)
  (insert "end")
  (ruby-indent-line t)
  (end-of-line))

(defun split-into-four()
  (interactive)
  (split-window-below)
  (split-window-right)
  (windmove-down)
  (split-window-right))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Display ido results vertically, rather than horizontally
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
(add-hook 'ido-setup-hook 'ido-define-keys)


(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;;;; pretty-symbols mode for programming
;; (defun my/prog-mode-hooks ()
;;   (my/turn-on 'pretty-symbols))

;; (add-hook 'prog-mode-hook
;;           'my/prog-mode-hooks)
;; (add-hook 'prog-mode-hook
;; 		  (lambda () (rainbow-delimiters-mode t)))


;; ;; Root directory
;; (setq root-dir (file-name-directory
;;                (or (buffer-file-name) load-file-name)))

;; ;; Path
;; (require 'exec-path-from-shell)
;; (when (memq window-system '(mac ns))
;;   (exec-path-from-shell-initialize))

