;;; package --- Joel's emacs config
;;; Commentary:

;;; Code:
(add-to-list 'load-path "~/emacs-env/")
(add-to-list 'custom-theme-load-path "~/emacs-env/themes/")
;;; EVERYTHING PACKAGES-RELATED:
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)
(setq package-selected-packages
      '(
	flycheck
	json-snatcher
	json-reformat
	js2-mode
	json-mode
	web-mode
	helm-git-grep
	exec-path-from-shell
	ruby-tools
	go-mode
	makey
	discover
	fullscreen-mode
	fullframe
	undo-tree
	haml-mode
	rainbow-mode
	color-theme-railscasts
	color-theme
	magit
	company
	projectile
	helm
	helm-projectile
	rvm
	robe
	flx-ido
	))
(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contrents))
  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (package-install package))))
(install-packages)

;;; GLOBAL SETTINGS:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(frame-background-mode (quote dark))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(ns-pop-up-frames t)
 '(package-selected-packages
   (quote
    (dash dash-functional flycheck json-snatcher json-reformat js2-mode json-mode web-mode helm-git-grep exec-path-from-shell ruby-tools go-mode makey discover fullscreen-mode fullframe undo-tree haml-mode rainbow-mode color-theme-railscasts color-theme magit company projectile helm helm-projectile rvm robe flx-ido)))
 '(safe-local-variable-values
   (quote
    ((eval when
	   (fboundp
	    (quote rainbow-mode))
	   (rainbow-mode 1)))))
 '(show-paren-mode t)
 '(tabbar-separator (quote (0.5)))
 '(tool-bar-mode nil)
 '(undo-tree-visualizer-diff t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq backup-directory-alist `(("." . "~/.backups")))
(setq backup-by-copying t)

;;; USER CONFIGURATIONS FOR PACKAGES:
(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/user_config/")))

(defun load-user-file (file)
  "Load a FILE in current user's configuration directory."
  (interactive "f")
  (load-file (expand-file-name file "~/.emacs.d/user_config/")))

(load-user-file "global_config.el")
(load-user-file "projectile_config.el")
(load-user-file "ruby_config.el")
(load-user-file "helm_config.el")
(load-user-file "company_config.el")
(load-user-file "go_config.el")
(load-user-file "colors_config.el")
(load-user-file "ido_config.el")
(load-user-file "keyboard_config.el")
(load-user-file "window_config.el")
(load-user-file "magit_config.el")
(load-user-file "helm_git_grep_config.el")
(load-user-file "flycheck_config.el")
(load-user-file "web_mode_config.el")
(load-user-file "ansi-term_config.el")

(load-user-file "sass-mode.el") ;; this isn't a user-made file w/e
(add-to-list 'auto-mode-alist '("\\.god$" . ruby-mode))

(provide 'init)
;;; init.el ends here
