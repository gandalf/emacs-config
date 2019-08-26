;;; package --- summary
;;; commentary:
;;; code:

(use-package prettier-js
  :commands (prettier-js-mode prettier-js-prettify)

  :init
  (add-hook 'web-mode-hook 'prettier-js-mode)
  (add-hook 'rjsx-mode-hook 'prettier-js-mode)
  )

(provide 'init-prettier-js)

;;; init-prettier-js ends here
