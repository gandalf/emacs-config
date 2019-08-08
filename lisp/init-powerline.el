;;; package --- summary
;;; commentary:
;;; code:
(use-package powerline
  :config
  ;;(powerline-center-theme)
  )

(use-package doom-modeline
  :config
  (setq doom-modeline-minor-modes t)
  ;;(setq doom-modeline-buffer-file-name-style 'file-name)
  (setq doom-modeline-icon t)
  (setq doom-modeline-major-mode-icon t)

  (minions-mode 1)

  :hook (after-init . doom-modeline-mode)
  )

(provide 'init-powerline)

;;; init-powerline.el ends here
