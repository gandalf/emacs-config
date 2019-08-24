;;; package --- summary
;;; commentary:
;;; code:

(setq delete-old-versions -1)
(setq version-control t)
(setq vc-make-backup-files t)
(setq vc-follow-symlinks t)
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")) )
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)) )
(setq inhibit-startup-screen t )
(setq ring-bell-function 'ignore ) ; silent bell on mistakes
(setq coding-system-for-read 'utf-8 )
(setq coding-system-for-write 'utf-8)
(setq sentence-end-double-space nil)
(setq-default fill-column 80) ; toggle wrapping text at this column
;;(setq-default show-trailing-whitespace t)
(setq whitespace-line-column 250)  ;; hack to get around ugly bold red text
(setq exec-path (append exec-path '("~/.nvm/versions/node/v12.9.0/bin")))

;;(electric-pair-mode 1)
(global-display-line-numbers-mode t)
(menu-bar-mode 1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-whitespace-mode t)
(global-hl-line-mode t)

;; use-package setup
(require 'package)
(setq package-enable-at-startup nil) ; dont do it immediately
(setq package-archives '(
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents) ; update archives
  (package-install 'use-package)) ; grab the newest use-package

;; define packages
(require 'use-package)
(setq use-package-always-ensure t)

(use-package all-the-icons)
(use-package better-defaults)
;;(use-package js2-mode)
;;(use-package rjsx-mode)
(use-package web-mode)
(use-package json-mode)
(use-package company-web)
(use-package dockerfile-mode)
(use-package minions)

;; pull in ./lisp/*
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-ivy)
(require 'init-flycheck)
(require 'init-company)
(require 'init-which-key)
(require 'init-projectile)
(require 'init-neotree)
(require 'init-python)
(require 'init-web-mode)
(require 'init-js-mode)
(require 'init-theme)
(require 'init-powerline)
(require 'init-fill-column-indicator)
(require 'init-lsp)
(require 'init-ws-butler)
(require 'init-prettier-js)
(require 'init-smartparens)

;; keybindings
(global-set-key (kbd "C-c h") 'company-complete)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (tide prettier-js rjsx-mode ws-butler which-key web-mode use-package solarized-theme smartparens reason-mode py-autopep8 projectile ocp-indent nyan-mode neotree minions lsp-ui lsp-javascript-typescript json-mode js2-mode forth-mode flycheck fill-column-indicator elpy doom-themes doom-modeline dockerfile-mode counsel company-web company-lsp better-defaults airline-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
