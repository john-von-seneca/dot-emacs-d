(require 'meghanada)
(add-hook 'java-mode-hook
          (lambda ()
            ;; meghanada-mode on
            (meghanada-mode t)
            (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
