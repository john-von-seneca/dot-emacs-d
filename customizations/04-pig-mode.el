
(defvar default-tab-width 4)
(require 'pig-mode)

(setq pig-indent-level 4)
(setq pig-version "0.11.1")

;; (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.pig\\'" . pig-mode))
(add-hook 'pig-mode-hook 'helm-gtags-mode)
