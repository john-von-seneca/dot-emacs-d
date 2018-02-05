;; ;; if you wanna have recent files show up on start
;; (recentf-open-files)

(setq prelude-whitespace nil)
(setq shift-select-mode t)
(windmove-default-keybindings 'super)
(setq prelude-guru nil)

(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(global-unset-key (vector (list 'shift 'up)))
(global-unset-key (vector (list 'shift 'down)))
(setq shift-selection-mode t)

(add-hook 'prelude-prog-mode-hook (lambda () (smartparens-mode -1)) t)

(split-into-four)
