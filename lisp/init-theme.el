;;; package --- summary
;;; commentary:
;;; code:

(use-package doom-themes
  :config
  (set-face-attribute 'font-lock-function-name-face 'bold)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)

  (load-theme 'doom-nord t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config)
  )

;; font face
(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 110
                    :weight 'normal
                    :width 'normal)

(provide 'init-theme)

;;; init-theme.el ends here

