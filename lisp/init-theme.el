;;; package --- summary
;;; commentary:
;;; code:

(use-package doom-themes
  :config
  (set-face-attribute 'font-lock-function-name-face 'bold)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)

  (load-theme 'doom-nord t)
  ;;(load-theme 'doom-opera t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config)
  )

;; font face
;;(set-face-attribute 'default nil
;;                    :family "Source Code Pro"
;;                    :height 110
;;                    :weight 'normal
;;                    :width 'normal)

(set-face-attribute 'default nil
                    :family "Source Code Pro"
                    :height 110
                    :width 'normal
                    :weight 'normal)

(provide 'init-theme)

;;; init-theme.el ends here

