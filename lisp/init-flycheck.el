;;; package --- summary
;;; commentary:
;;; code:

(use-package flycheck
  :config
  ;; disable default jslint
  (setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))

  ;; enable flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  )

(provide 'init-flycheck)

;;; init-flycheck ends here
