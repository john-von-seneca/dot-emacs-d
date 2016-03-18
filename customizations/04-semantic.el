
;; source: http://tuhdo.github.io/c-ide.html
;; To enable code completion using Semantic, add the following code:
(require 'cc-mode)
(require 'semantic)
;;
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
;;
(semantic-mode 1)
;;
;; Add more system include paths:
;; By default, Semantic automatically
;; includes some default system include paths such as /usr/include,
;; /usr/local/include… You can view the list of include paths in
;; semantic-dependency-system-include-path. To add more include paths,
;; for example Boost include paths, use the function
;; semantic-add-system-include like this:
;;
(semantic-add-system-include "/usr/include/boost" 'c++-mode)
;; If you want the system include paths to be available on both C/C++
;; modes, then ignore the optional mode argument in
;; semantic-add-system-include.
;;
;; companh-mode provides a command called company-semantic that uses
;; SemanticDB to retrieve completion candidates. Function interface of
;; each candidate is shown in the minibuffer. One nice thing of
;; company-semantic is that it fixed an issue of original Semantic
;; completion semantic-ia-complete-symbol: it can show you completions
;; even if there's no prefix. The original semantic-ia-complete-symbol
;; requires to have at least one character as a prefix for finding
;; completions.
;;
;; This mode, when enabled, displays function interface in the minibuffer:
;; It works well for C but not C++, since C++ can overload function and
;; semantic-idle-summary-mode can only display one interface at a
;; time. Since this mode is part of Semantic, it also relies on
;; SemanticDB that is created from parsing source files.
;;
;; Setup:
(global-semantic-idle-summary-mode 1)
;;
;; Command: global-semantic-stickyfunc-mode
;; When enabled, this mode shows
;; the function point is currently in at the first line of the current
;; buffer. This is useful when you have a very long function that spreads
;; more than a screen, and you don't have to scroll up to read the
;; function name and then scroll down to original position.
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
