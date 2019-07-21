;; init.el --- Emacs configuration

;; INSTALL PACKAGES
;; --------------------------------------
(require 'package)

(add-to-list 'package-archives
       '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar myPackages
  '(better-defaults
    elpy
    flycheck
    py-autopep8
    web-mode
    emmet-mode
    company-web
    js2-mode
    rjsx-mode
    doom-themes))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally

(require 'doom-themes)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

(load-theme 'doom-opera t)

;; python configuration
(elpy-enable)

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; web development
;;(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode)) ;; auto-enable for .js/.jsx files
;;(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'"))) ;; syntax highlighting

;;;; indentation
;;(defun web-mode-init-hook ()
;;  "Hooks for Web mode.  Adjust indent."
;;  (setq web-mode-markup-indent-offset 2))
  
;;(add-hook 'web-mode-hook  'web-mode-init-hook)

;;;; disable default jslint
;;(require 'flycheck)
;;(setq-default flycheck-disabled-checkers
;;              (append flycheck-disabled-checkers
;;                      '(javascript-jshint json-jsonlist)))

;;;; enable eslint checker for web-mode
;;(flycheck-add-mode 'javascript-eslint 'web-mode)
;;;; enable flycheck globally
;;(add-hook 'after-init-hook #'global-flycheck-mode)

;;(add-hook 'web-mode-hook 'emmet-mode)

;;;; highlight columns
(setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-current-element-highlight t)

(defun my-web-mode-hook ()
  (set (make-local-variable 'company-backends)
       '(company-css company-web-html company-yasnippet company-files))
)

;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rjsx-mode js2-mode web-mode use-package py-autopep8 powerline material-theme helm flycheck emmet-mode elpy doom-themes company-web better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
