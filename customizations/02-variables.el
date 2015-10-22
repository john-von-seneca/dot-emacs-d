
(setq ac-ignore-case nil)
(setq autopair-autowrap t)
(setq c-syntactic-indentation t)
(setq column-number-mode t) ;; this shows the row,col in status-bar

;; ;; Show keystrokes
;; (setq echo-keystrokes 0.02)

(setq flx-ido-threshhold 1000)
(setq hl-line-sticky-flag nil)

;; Don't show startup screen
(setq inhibit-startup-screen t)

(setq kept-new-versions 30)
(setq kept-old-versions 30)
(setq ido-enable-flex-matching t)
(setq line-number-mode t)
(setq recentf-max-menu-items 40)
(setq ruby-indent-level 4)
(setq ruby-indent-tabs-mode t)
(setq scroll-step 1)
(setq shift-select-mode t)
(setq version-control t)


;; autoload/autosave:
 ;; if you start Emacs as "emacs --daemon" - turn off autoloading of workgroups:
(setq wg-use-default-session-file nil)
;; (unless (file-exists-p "~/.emacs.d/.emacs_workgroups"))
;;   (make-directory "~/.emacs.d/.emacs_workgroups"))
(setq wg-default-session-file "~/.emacs.d/.emacs_workgroups")

(setq x-select-enable-clipboard t)

(setq-default indent-tabs-mode t)
(setq-default indicate-buffer-boundaries 'left)
(setq-default indicate-empty-lines +1)


;; (setq global-auto-complete-mode t)

