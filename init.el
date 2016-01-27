;; /This/ file (~init.el~) that you are reading
;; should be in this folder

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-library "url-handlers")

;; (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))


;; (unless (file-exists-p "~/.emacs.d/.emacs_workgroups"))
;;  (make-directory "~/.emacs.d/.emacs_workgroups"))

(mapc 'load (directory-files "~/.emacs.d/customizations" t "^[0-9]+.*\.el$"))






