

;; (require 'ggtags)
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;               (ggtags-mode 1))))

;; (define-key ggtags-mode-map (kbd "M-g s") 'ggtags-find-other-symbol)
;; (define-key ggtags-mode-map (kbd "M-g h") 'ggtags-view-tag-history)
;; (define-key ggtags-mode-map (kbd "M-g r") 'ggtags-find-reference)
;; (define-key ggtags-mode-map (kbd "M-g f") 'ggtags-find-file)
;; (define-key ggtags-mode-map (kbd "M-g c") 'ggtags-create-tags)
;; (define-key ggtags-mode-map (kbd "M-g u") 'ggtags-update-tags)

;; (define-key ggtags-mode-map (kbd "M-g ,") 'pop-tag-mark)

(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

;; Enable helm-gtags-mode
(require 'helm-gtags)
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)

(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'function-args-mode)

(add-hook 'c++-mode-hook 'function-args-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

;; (add-hook 'python-mode-hook 'helm-gtags-mode)
;; (add-hook 'python-mode-hook 'function-args-mode)

(define-key helm-gtags-mode-map (kbd "M-g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
;; (global-unset-key (kbd "s-."))
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "s-.") 'helm-gtags-dwim)

;; (global-unset-key (kbd "s-,"))
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "s-,") 'helm-gtags-pop-stack)

(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
(global-unset-key (kbd "M-s-<left>"))
(define-key helm-gtags-mode-map (kbd "M-s-<left>") 'helm-gtags-previous-history)
(global-unset-key (kbd "M-s-<right>"))
(define-key helm-gtags-mode-map (kbd "M-s-<right>") 'helm-gtags-next-history)

(setq-local imenu-create-index-function #'ggtags-build-imenu-index)

