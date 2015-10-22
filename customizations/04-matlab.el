;; matlab stuff

(add-hook 'matlab-mode-hook
		  (lambda () (setq indent-tabs-mode t)))

;; auto complete for matlab
;; (add-hook 'matlab-mode-hook 'auto-complete-mode)
;; (setq auto-mode-alist (cons '("\\.m\\'" . matlab-mode) auto-mode-alist))


(autoload 'matlab-mode "~/elisp/matlab.el" "Enter Matlab mode." t)
(autoload 'matlab-shell "~/elisp/matlab.el" "Interactive Matlab mode." t)

