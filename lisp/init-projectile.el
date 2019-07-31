(use-package projectile
  :init
  (projectile-mode t)

  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  )

(provide 'init-projectile)

;;; init-projectile ends here
