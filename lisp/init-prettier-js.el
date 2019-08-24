;;; package --- summary
;;; commentary:
;;; code:

(use-package prettier-js
  :config
  (setq prettier-js-args '(
                           "--trailing-comma" "es5"
                           "--single-quote" "true"
                           "--print-width" "120"
                           "--tab-width" "2"
                           "--use-tabs" "false"
                           "--jsx-bracket-same-line" "false"
                           "--stylelint-integration" "true"))
  )

(provide 'init-prettier-js)

;;; init-prettier-js ends here
