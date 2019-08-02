;;; package --- summary
;;; commentary:
;;; code:

(use-package neotree
  :after
  projectile

  :init
  (require 'neotree)

  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-smart-open t)

  :bind
  ("<f8>" . 'neotree-toggle)
  ("<f9>" . 'neotree-projectile-action)
  )
(provide 'init-neotree)

;;; init-neotree.el ends here
