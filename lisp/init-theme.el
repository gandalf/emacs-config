;;; package --- summary

;;; commentary:

;;; code:

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-nord t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config)
  )

(provide 'init-theme)

;;; init-theme.el ends here

