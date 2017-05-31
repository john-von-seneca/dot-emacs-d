;; (require 'dired-details+)

;; (add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
;; # http://www.emacswiki.org/emacs/ELPA
;; (require 'package)
;; (package-initialize)

;; Package Manager
;; See ~Cask~ file for its configuration
;; https://github.com/cask/cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Keeps ~Cask~ file in sync with the packages
;; that you install/uninstall via ~M-x list-packages~
;; https://github.com/rdallasgray/pallet
(require 'pallet)

;; (require 'auto-complete-config)
;; (ac-config-default)
;; ;; (add-to-list 'ac-dictionary-directories
;; ;;			 "~/.emacs.d/.cask/24.3.50.1/elpa/auto-complete-20130724.1750/dict")
;; (add-to-list 'ac-modes 'enh-ruby-mode)
;; (add-to-list 'ac-modes 'web-mode)

;; Project management
;; (require 'ack-and-a-half)
;; (require 'projectile)

(require 'ein)

;; Git
;; (require 'magit)

;; (require 'git-gutter-fringe+)
;; (require 'rainbow-delimiters)
;; (require 'smart-mode-line)
;; (require 'workgroups2)

;; ;; Snippets
;; ;; https://github.com/capitaomorte/yasnippet
(require 'yasnippet)
;; (yas-load-directory (concat root-dir "snippets"))
(yas-global-mode 0)


;; (add-hook 'kill-emacs-hook 'wg-save-session)
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t)
(setq delete-old-versions t
	  kept-new-versions 6
	  kept-old-versions 2
	  version-control t)


;; ;; this aint working
;; (require 'parenface)

;; ;; these are not with melpa
;; (require 'autopair)
;; (require 'auto-complete-clang)
;; (define-key c++-mode-map (kbd "C-S-<return>") 'ac-complete-clang)
;; replace C-S-<return> with a key binding that you want


;;;; prelude shit
(if (eq system-type 'darwin)
	(setq prelude-theme nil)
	nil)
(load "~/repos/bbatsov/prelude/init.el")
(setq prelude-guru nil)
(if (eq system-type 'darwin)
	(setq prelude-theme nil)
  nil)


;; ;; god knows what these are
;; (require 'member-function)
;; (setq mf--source-file-extension "cpp")
;; (require 'auto-complete-auctex)
;; (set-face-foreground 'paren-face "blue4")


;; global emacs specific settings
(fset 'yes-or-no-p 'y-or-n-p)
(windmove-default-keybindings 'super)
;; tab vs spaces shit
(global-set-key (kbd "TAB") 'self-insert-command)
(setq-default tab-width 4)
(setq-default tab-stop-list (list 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100 104 108))


;; (icy-mode 1)
(eval-when-compile
  (require 'use-package))

;; (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10"))
(provide '00-global)


