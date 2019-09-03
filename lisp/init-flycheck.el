;;; package --- summary
;;; commentary:
;;; code:

(use-package flycheck
  :init
  (global-flycheck-mode t)

  :config
  (set-face-attribute 'flycheck-error nil :underline '(:style line))

  ;; disable default jslint
  (setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))

  ;; enable flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-add-mode 'html-tidy 'web-mode)
  )

(define-fringe-bitmap 'flycheck-fringe-bitmap-ball
    (vector #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00111000
            #b01111100
            #b11111110
            #b11111110
            #b01111100
            #b00111000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000
            #b00000000))

(flycheck-define-error-level 'error
  :severity 100
  :compilation-level 2
  :overlay-category 'flycheck-error-overlay
  :fringe-bitmap 'flycheck-fringe-bitmap-ball
  :fringe-face 'flycheck-fringe-error
  :error-list-face 'flycheck-error-list-error)

(flycheck-define-error-level 'warning
  :severity 100
  :compilation-level 1
  :overlay-category 'flycheck-warning-overlay
  :fringe-bitmap 'flycheck-fringe-bitmap-ball
  :fringe-face 'flycheck-fringe-warning
  :error-list-face 'flycheck-warning-list-error)

(flycheck-define-error-level 'info
  :severity 100
  :compilation-level 0
  :overlay-category 'flycheck-info-overlay
  :fringe-bitmap 'flycheck-fringe-bitmap-ball
  :fringe-face 'flycheck-fringe-info
  :error-list-face 'flycheck-info-list-error)

(custom-set-faces
 '(flycheck-error ((t (:underline "#C16069"))))
 '(flycheck-warning ((t (:underline "#F0E68C"))))
 '(flycheck-info ((t (:underline "#3CB371"))))
 )

(provide 'init-flycheck)

;;; init-flycheck ends here
