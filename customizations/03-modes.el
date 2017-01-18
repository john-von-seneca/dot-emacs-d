;;(bar-cursor-mode 1)
;; (autopair-global-mode 1)
(blink-cursor-mode t)
(delete-selection-mode 1) ;; equivalent to cua-mode
(icomplete-mode t)
(ido-mode t)
(ido-vertical-mode)
(iswitchb-mode 1)
(pallet-mode t)
(rainbow-delimiters-mode)
(recentf-mode 1)
(scroll-bar-mode -1)
(show-paren-mode 1)
(helm-flx-mode +1)

(tool-bar-mode -1)

(global-font-lock-mode 1)
(global-git-gutter+-mode +1)
(global-hl-line-mode t)
(global-linum-mode 1)
(projectile-global-mode)

(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

;; (vimish-fold-global-mode 1)


;; irony-mode

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(setq speedbar-use-images nil)

(require 'desktop)
;; (setq desktop-path (list "~/.emacs.d/" system-type))
(setq desktop-base-file-name (format ".emacs.%s.desktop" (if (eq system-type 'darwin) "darwin" "linux")))
(desktop-save-mode 1)

