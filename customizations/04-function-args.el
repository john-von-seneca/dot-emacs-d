;; function-args

;; source: https://github.com/abo-abo/function-args
;;
;; Enable case-insensitive searching:
(set-default 'semantic-case-fold t)
;;
;; Put c++-mode as default for *.h files (improves parsing):
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.hh\\'" . c++-mode))
;;
;; If your includes aren't located in default dirs e.g. /usr/include/ etc, then you have to do something like this:
;; (semantic-add-system-include "~/Software/deal.II/include/" 'c++-mode)
;; (semantic-add-system-include "/usr/local/boost_1_54_0/" 'c++-mode)
;;
;; You can add this to improve the parse of macro-heavy code:
;; (require 'semantic/bovine/c)
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;; 			 "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/stddef.h")
