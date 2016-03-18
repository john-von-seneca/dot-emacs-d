
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; source: http://tuhdo.github.io/c-ide.html#sec-2
;;
;; To use company-mode with Clang, add this configuration:
(setq company-backends (delete 'company-semantic company-backends))
(require 'cc-mode)
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)
(define-key lisp-mode-map  [(tab)] 'company-complete)
;;
;; company-c-headers provides auto-completion for C/C++ headers using Company.
;; After installing from MELPA, set it up:
(add-to-list 'company-backends 'company-c-headers)
;; IMPORTANT: If you want to complete C++ header files, you have to add
;; its paths since by default company-c-headers only includes these two
;; system include paths: /usr/include/ and /usr/local/include/. To enable
;; C++ header completion for standard libraries, you have to add its
;; path, for example, like this:
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.8/")
;; After that, you can complete C++ header files. To complete project
;; local, use company-c-headers-path-user and put it in .dir-locals.el.
