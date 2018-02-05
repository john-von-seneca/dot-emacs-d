;;; Code:
(global-set-key [(shift delete)] 'clipboard-kill-region)
(global-set-key [(control insert)] 'clipboard-kill-ring-save)
(global-set-key [(shift insert)] 'clipboard-yank)

(global-unset-key (kbd "s-a"))
(global-set-key (kbd "s-a") 'mark-whole-buffer)

(global-unset-key (kbd "s-b"))
(global-set-key (kbd "s-b") 'helm-mini)

(global-unset-key (kbd "s-c"))
(global-set-key (kbd "s-c") 'kill-ring-save)

(global-unset-key (kbd "s-d"))
(global-set-key (kbd "s-d") 'prelude-duplicate-current-line-or-region)

(global-unset-key (kbd "s-e"))
(global-set-key (kbd "s-e") 'fill-region)

(global-unset-key (kbd "s-f"))
(global-set-key (kbd "s-f") 'find-file)

(global-unset-key (kbd "M-s-f"))
(global-unset-key (kbd "C-M-f"))
(global-set-key (kbd "M-s-f") 'projectile-find-file)
(global-set-key (kbd "C-M-f") 'projectile-find-file)

(global-unset-key (kbd "s-g"))
(global-set-key (kbd "s-g") 'keyboard-escape-quit)
(global-set-key (kbd "H-g") 'keyboard-escape-quit)

(global-unset-key (kbd "s-h"))
(global-set-key (kbd "s-h") 'query-replace)

(global-unset-key (kbd "s-i"))
(global-set-key (kbd "s-i") 'eval-region)

;; (global-unset-key (kbd "s-j"))
(global-unset-key (kbd "C-j"))
(global-set-key (kbd "RET") 'newline-and-indent)
;; (global-set-key (kbd "s-j") 'helm-mini)

(global-unset-key (kbd "s-k"))
(global-set-key (kbd "s-k") 'comment-or-uncomment-region)

(global-unset-key (kbd "s-l"))
(global-set-key (kbd "s-l") 'goto-line)

;; (global-unset-key (kbd "s-o"))
;; (global-set-key (kbd "s-o") 'other-window)

(global-unset-key (kbd "M-s-o"))
(global-set-key (kbd "M-s-o") 'projectile-switch-project)

;; (global-unset-key (kbd "s-p d"))
;; (global-set-key (kbd "s-p d") 'projectile-dired)

(global-unset-key (kbd "s-p"))
(global-set-key (kbd "s-p") 'shell-command)

(global-unset-key (kbd "s-q"))
(global-set-key (kbd "s-q") 'save-buffers-kill-terminal)

(global-set-key (kbd "H-r") 'recentf-open-files)
(global-set-key (kbd "s-r") 'recentf-open-files)

(global-unset-key (kbd "s-s"))
(global-set-key (kbd "s-s") 'save-buffer)

(global-unset-key (kbd "M-s-s"))
(global-set-key (kbd "M-s-s") 'projectile-ag)

;; (global-unset-key (kbd "C-w"))

(global-unset-key (kbd "M-s-u"))
(global-set-key (kbd "M-s-u") 'helm-gtags-update-tags)

(global-unset-key (kbd "s-v"))
(global-set-key (kbd "s-v") 'yank)

(global-unset-key (kbd "s-x"))
(global-set-key (kbd "s-x") 'kill-region)
(global-unset-key (kbd "M-x"))
(global-set-key (kbd "M-x") 'smex)


(global-unset-key (kbd "s-y"))
(global-set-key (kbd "s-y") 'yas-insert-snippet)

(global-set-key "\C-z" 'undo)
(global-unset-key (kbd "s-z"))
(global-set-key (kbd "s-z") 'undo)
(global-unset-key (kbd "H-z"))
(global-set-key (kbd "H-z") 'undo)


(global-unset-key (kbd "s-`"))
(global-set-key (kbd "s-`") 'vimish-fold)


(global-set-key [backspace] 'delete-backward-char)

(global-unset-key (kbd "<end>"))
(global-unset-key (kbd "<home>"))
(global-set-key (kbd "<end>") 'move-end-of-line)
(global-set-key (kbd "<home>") 'move-beginning-of-line)

(global-unset-key (kbd "s-/"))
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

(global-unset-key (kbd "M-/"))
(global-set-key (kbd "M-/") 'comment-or-uncomment-region)

(global-unset-key (kbd "s-="))
(global-set-key (kbd "s-=") 'show-subtree)

(global-unset-key (kbd "s--"))
(global-set-key (kbd "s--") 'hide-subtree)

(global-unset-key (kbd "s-."))
;; (global-set-key (kbd "s-.") 'find-tag)
(global-set-key (kbd "s-.") 'xref-find-definitions)

(global-unset-key (kbd "s-8"))
(global-set-key (kbd "s-8") 'pop-tag-mark)

;; (global-unset-key (kbd "M-s-<right>"))
;; (global-set-key (kbd "M-s-<right>") 'elscreen-next)

;; (global-unset-key (kbd "M-s-<left>"))
;; (global-set-key (kbd "M-s-<left>") 'elscreen-previous)

(global-unset-key (kbd "M-c"))
(global-set-key (kbd "M-c") (lambda ()
							  (interactive)
							  (kill-ring-save (region-beginning) (region-end))))


(global-set-key (kbd "C-S-s-p") (lambda ()
								  (interactive)
								  (auto-complete-mode t)))

;; Change prefix key (before activating WG)
(setq wg-prefix-key (kbd "C-c z"))



;;  ;; Set your own keyboard shortcuts to reload/save/switch WG:
;;  (global-set-key (kbd "s-y")  'wg-reload-session)
;;  (global-set-key (kbd "s-n")  'wg-save-session)
;;  (global-set-key (kbd "s-u")  'wg-switch-to-workgroup)
;;  ;; (global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)

;; ;; 
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))
(setq shift-selection-mode t)
;; ;;
;; (global-unset-key (vector (list 'shift 'left)))
;; (global-unset-key (vector (list 'shift 'right)))
;; (global-unset-key (vector (list 'shift 'up)))
;; (global-unset-key (vector (list 'shift 'down)))
;; (setq shift-selection-mode t)

(eval-after-load 'magit
  (progn '(global-set-key (kbd "C-x g") 'magit-status)))


(global-unset-key (kbd "s-g"))

(global-unset-key (kbd "H-c"))
(global-unset-key (kbd "H-c d"))
(global-set-key (kbd "H-c d") 'prelude-duplicate-current-line-or-region)

(global-unset-key (kbd "H-x"))
(global-unset-key (kbd "H-x 1"))
(global-set-key (kbd "H-x 1") 'delete-other-windows)
(global-unset-key (kbd "H-x 2"))
(global-set-key (kbd "H-x 2") 'split-window-below)
(global-unset-key (kbd "H-x 3"))
(global-set-key (kbd "H-x 3") 'split-window-right)
(global-set-key (kbd "s-1") 'delete-other-windows)
(global-set-key (kbd "s-2") 'split-window-below)
(global-set-key (kbd "s-3") 'split-window-right)

(global-unset-key (kbd "H-o"))
(global-set-key (kbd "H-o") 'projectile-find-file)


(global-unset-key (kbd "s-g"))
(global-set-key (kbd "s-g") 'projectile-ag)


(global-unset-key (kbd "H-F"))
(global-set-key (kbd "H-F") 'projectile-find-file)

;; (global-unset-key (kbd "s-g"))
;; (global-unset-key (kbd "C-c g"))

(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)

                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))



(require 'multiple-cursors)
(global-set-key (kbd "M-s-k") 'mc/edit-lines)
