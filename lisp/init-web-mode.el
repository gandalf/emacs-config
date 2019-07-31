(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.json\\'" . web-mode))

  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq tab-width 2)
  :config
  (defun my-web-mode-hook ()
    "Hooks for Web mode."
    (set (make-local-variable 'company-backends)
         '(company-css company-web-html company-yasnippet company-files))

    (add-hook 'web-mode-hook  'my-web-mode-hook)))

(provide 'init-web-mode)

;;; init-web-mode.el ends here
