;;; package --- summary
;;; commentary:
;;; code:

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode)

  (define-key company-active-map (kbd "C-n") 'company-select-next-or-abort)
  (define-key company-active-map (kbd "C-p") 'company-select-previous-or-abort)
  )

(provide 'init-company)

;;; init-company.el ends here
