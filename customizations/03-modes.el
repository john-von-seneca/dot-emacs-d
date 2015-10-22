;;(bar-cursor-mode 1)
;; (autopair-global-mode 1)
(blink-cursor-mode t)
(delete-selection-mode 1) ;; equivalent to cua-mode
(desktop-save-mode 1)
(flx-ido-mode 1)
(icomplete-mode t)
(ido-mode t)
(ido-vertical-mode)
(iswitchb-mode 1)
(pallet-mode t)
(rainbow-delimiters-mode)
(recentf-mode 1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(tool-bar-mode -1)

(global-font-lock-mode 1)
(global-git-gutter+-mode +1)
(global-hl-line-mode t)
(global-linum-mode 1)
(projectile-global-mode)

(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)
