;; tex mode hooks
(add-hook 'TeX-mode-hook 'turn-on-auto-fill)
(add-hook 'TeX-mode-hook 'turn-on-flyspell)
(add-hook 'TeX-mode-hook
          (lambda () (setq indent-tabs-mode t)))
