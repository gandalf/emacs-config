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

(electric-pair-mode 1)
(global-display-line-numbers-mode t)
(menu-bar-mode t)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(global-whitespace-mode t)

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
;; always download if not available
(setq use-package-always-ensure t)

(use-package all-the-icons)
(use-package better-defaults)
(use-package js2-mode)
(use-package web-mode)
(use-package company-web)
(use-package dockerfile-mode)

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
(require 'init-theme)
(require 'init-powerline)

;; keybindings

(global-set-key (kbd "C-c h") 'company-complete)

;;; init.el ends here

