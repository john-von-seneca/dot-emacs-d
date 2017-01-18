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


(defun xah-syntax-color-hex ()
  "Syntax color text of the form 「#ff1100」 in current buffer.
URL `http://ergoemacs.org/emacs/emacs_CSS_colors.html'
Version 2016-03-15"
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[ABCDEFabcdef[:digit:]]\\{6\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background (match-string-no-properties 0)))))))
  (font-lock-fontify-buffer))

(add-hook 'css-mode-hook 'xah-syntax-color-hex)
(add-hook 'php-mode-hook 'xah-syntax-color-hex)
(add-hook 'html-mode-hook 'xah-syntax-color-hex)

(defun my-delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times.
This command does not push text to `kill-ring'."
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word arg)
     (point))))

(defun my-backward-delete-word (arg)
  "Delete characters backward until encountering the beginning of a word.
With argument, do this that many times.
This command does not push text to `kill-ring'."
  (interactive "p")
  (my-delete-word (- arg)))

(defun my-delete-line ()
  "Delete text from current position to end of line char.
This command does not push text to `kill-ring'."
  (interactive)
  (delete-region
   (point)
   (progn (end-of-line 1) (point)))
  (delete-char 1))

(defun my-delete-line-backward ()
  "Delete text between the beginning of the line to the cursor position.
This command does not push text to `kill-ring'."
  (interactive)
  (let (p1 p2)
    (setq p1 (point))
    (beginning-of-line 1)
    (setq p2 (point))
    (delete-region p1 p2)))

; bind them to emacs's default shortcut keys:
(global-set-key (kbd "C-S-k") 'my-delete-line-backward) ; Ctrl+Shift+k
(global-set-key (kbd "C-k") 'my-delete-line)
(global-set-key (kbd "M-d") 'my-delete-word)
(global-set-key (kbd "<M-backspace>") 'my-backward-delete-word)

;; http://ensime.org/editors/emacs/hacks#undo
(use-package undo-tree
			 :diminish undo-tree-mode
			 :config (global-undo-tree-mode)
			 :bind ("s-z" . undo-tree-visualize))


;; http://ensime.org/editors/emacs/hacks#undo
(use-package highlight-symbol
			 :diminish highlight-symbol-mode
			 :commands highlight-symbol
			 :bind ("s-h" . highlight-symbol))

