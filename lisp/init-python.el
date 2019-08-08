;;; package --- summary
;;; commentary:
;;; code:

(use-package elpy
  :config
  (elpy-enable)

  (add-hook 'elpy-mode-hook (lambda () (highlight-indentation-mode -1)))

  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "-i --simple-prompt")

  (when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))
  )


(use-package py-autopep8
  :config
  (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
  )

(provide 'init-python)

;;; init-python ends here
