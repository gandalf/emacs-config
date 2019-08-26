;;; package --- summary
;;; commentary:
;;; code:

(use-package rjsx-mode
  :mode(("\\.js\\'" . rjsx-mode)
        ("\\.jsx\\'" . rjsx-mode))
  :init
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  (add-hook 'rjsx-mode-hook 'tide-mode))

(use-package tide
  :mode(("\\.ts\\'" . typescript-mode))

  :init
  ;;(add-hook 'js2-mode-hook 'tide-mode)
  ;;(add-hook 'rjsx-mode-hook 'tide-mode)
  (add-hook 'typescript-mode-hook 'tide-mode)
  (add-hook 'typescript-mode-hook 'prettier-js-mode)

  :config
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save-mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1)
  (prettier-js-mode +1)

  (unless (tide-current-server)
    (tide-restart-server))

  :config
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t)

  ;; formats the buffer before saving
  (add-hook 'before-save-hook 'tide-format-before-save)

  (add-hook 'typescript-mode-hook #'setup-tide-mode)
  )

(provide 'init-js-mode)

;;; init-js-mode ends here
