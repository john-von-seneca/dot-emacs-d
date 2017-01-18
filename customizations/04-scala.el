;; scala and shit
;;(add-to-list 'load-path "~/elisp/scala-mode2")
;;(require 'scala-mode2)
;;(add-to-list 'load-path "~/elisp/ensime_2.10.0-0.9.8.9/elisp")
;;(require 'ensime)
;; This step ca	uses the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;;(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;;(setq exec-path (append exec-path (list "/usr/local/bin/" )))

;;We have "sbt" and "scala" in /usr/local/bin so we add this path to the PATH environment
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/sbin")))
;; why is this shite needed?
(setenv "PATH" (shell-command-to-string "/bin/bash -c 'echo -n $PATH'"))

(require 'scala-mode)
(require 'ensime)

;; (autoload 'scala-mode "scala-mode2")
(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.scala$" . ensime-mode))

(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . ensime-mode))


;; (setq ensime-startup-snapshot-notification nil)
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; (define-key
;;   scala-mode-map
;;   (kbd "s-/")
;;   'comment-or-uncomment-region)


(setq ensime-startup-snapshot-notification nil)
(setq scala-prettify-symbols
	  '(
		("=>" . ?⇒)
		("<-" . ?←)
		("->" . ?→)
		("undefined" . ?⊥)
		("&&" . ?∧)
		("||" . ?∨)
		("<<<" . ?⋘)
		(">>>" . ?⋙)
		("++" . ?⧺)
		("any" . ?∃)
		("all" . ?∀)
		("traverse" . ?↦)
		("map" . ?∘)
		("lambda" . ?λ)
		("alpha" . ?α)
		("beta" . ?β)
		("Unit" . ?∅)
		))

;; (add-hook 'scala-mode-hook
;; 		  (lambda ()
;; 			(ensime-scala-mode-hook)
;; 			(setq prettify-symbols-alist scala-prettify-symbols)
;; 			(prettify-symbols-mode)
;; 			(define-key scala-mode-map (kbd "C-x M-e") 'ensime-fully-reload)
;; 			))

(defun ensime-fully-reload ()
  "reload ensime"
  (interactive)
  (ensime-shutdown)
  (ensime))


;; (global-unset-key (kbd "s-."))
;; (global-set-key (kbd "s-.") 'ensime-edit-definition)
;; (ensime-edit-definition ARG &optional WHERE)

;; (global-unset-key (kbd "s-,"))
;; (global-set-key (kbd "s-,") 'ensime-pop-find-definition-stack)
;; (ensime-pop-find-definition-stack)
