;;; package --- summary
;;; commentary:
;;; code:

(use-package js2-mode
  :mode(("\\.js\\'" . rjsx-mode)
        ("\\.jsx\\'" . rjsx-mode))

  :init
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  (add-hook 'rjsx-mode-hook 'tide-mode)
  )

(use-package tide
  :mode(("\\.ts\\'" . typescript-mode))

  :init
  (add-hook 'typescript-mode-hook 'tide-mode)
  (add-hook 'typescript-mode-hook 'prettier-mode)

  :config
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save-mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1)
  )

(provide 'init-js-mode)

;;; init-js-mode ends here
