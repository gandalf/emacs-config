;;; lisp/init-flycheck.el
(use-package flycheck
  ;;;:init (global-flycheck-mode)

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
