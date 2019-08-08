;;; package --- summary
;;; commentary:
;;; code:

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode t)))

(use-package fill-column-indicator
  :config
  (global-fci-mode t)
  )

(provide 'init-fill-column-indicator)

;;; init-fill-column-indicator ends here
