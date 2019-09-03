;;; package --- summary
;;; commentary:
;;; code:

(use-package lsp-mode
  :config
  (setq lsp-prefer-flymake nil) ;; prefer using lsp-ui (flycheck) over flymake
  (setq-default lsp-pyls-configuration-sources ["flake8"])

  ;; make sure we have lsp-imenu everywhere we have LSP
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

  ;;(lsp-register-client
  ;;(make-lsp-client :new-connection (lsp-stdio-connection "pyls")
  ;;                 :major-modes '(python-mode)
  ;;                 :server-id 'pyls))

  (require 'lsp)
  (require 'lsp-clients)

  (add-hook 'python-mode-hook 'lsp)
  (add-hook 'js2-mode-hook 'lsp)
  (add-hook 'rjsx-mode-hook 'lsp)
  ;;(add-hook 'web-mode 'lsp)

  :bind
  ("M-,"  . lsp-ui-peek-find-definitions)
  ("M-?"  . lsp-ui-peek-find-references))


(use-package lsp-ui
  :requires lsp-mode flycheck
  :config

  (setq
   ;;lsp-ui-sideline-ignore-duplicate t
   lsp-ui-flycheck-enable t)

  (add-hook 'lsp-mode-hook 'lsp-ui-mode)

  ;; (setq lsp-ui-doc-enable t
  ;;       lsp-ui-doc-use-childframe t
  ;;       lsp-ui-doc-position 'top
  ;;       lsp-ui-doc-include-signature t
  ;;       lsp-ui-sideline-enable nil
  ;;       lsp-ui-flycheck-enable t
  ;;       lsp-ui-flycheck-list-position 'right
  ;;       lsp-ui-flycheck-live-reporting t
  ;;       lsp-ui-peek-enable t
  ;;       lsp-ui-peek-list-width 60
  ;;       lsp-ui-peek-peek-height 25)
  )


(use-package company-lsp
  :config
  (push 'company-lsp company-backends))

(provide 'init-lsp)

;;; init-lsp ends here
