

;; ;; Theme
;; ;; https://github.com/bbatsov/zenburn-emacs

(message (if (eq system-type 'darwin) "darwin" "linux"))
(load-theme 'zenburn t)
;; (load-theme 'leuven)

;; (if (eq system-type 'darwin)
;;  	 (setq prelude-theme "leuven")
;;   nil)

;; http://stackoverflow.com/a/8547861/5510350
;; treating themes as safe
;; (if (eq system-type 'darwin)
;; 	(load-theme 'anti-zenburn t)
;;   (load-theme 'material t))
;; (load-theme 'material-light)
;; (load-theme 'aurora)
;; (load-theme 'leuven t)
;; (load-theme 'material t)
;; (load-theme 'base16-ashes t)
;; (load-theme 'base16-ocean)
;; (load-theme 'zenburn)

(set-cursor-color "firebrick")
;; leuven default
;; (set-cursor-color "#21BDFF")

;; (set-background-color "#3F3F3F")
;; (set-background-color "black")
;; (add-to-list 'default-frame-alist '(background-color . "#102372"))

;; ;; Font
;; ;; https://www.mozilla.org/en-US/styleguide/products/firefox-os/typeface/#download-primary
;; (set-frame-font "Fira Mono OT-14" nil t)
