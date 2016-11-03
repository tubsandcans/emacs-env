;;; package --- Joel's emacs config
;;; Commentary:

;;; Code:
(package-initialize)
(add-to-list 'load-path "~/emacs_env/")

(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice nil)
 '(ns-pop-up-frames t)
 '(package-selected-packages
   (quote
    (exec-path-from-shell ruby-tools flymake-easy flymake-ruby flycheck go-mode makey discover fullscreen-mode fullframe undo-tree coffee-mode rainbow-mode color-theme-railscasts color-theme magit rvm ## robe flx-ido)))
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

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/user_config/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file "~/.emacs.d/user_config/")))

(load-user-file "projectile_config.el")
(load-user-file "ruby_config.el")
(load-user-file "helm_config.el")
(load-user-file "company_config.el")
(load-user-file "go_config.el")
(load-user-file "colors_config.el")
(load-user-file "ido_config.el")
(load-user-file "keyboard_config.el")
(load-user-file "window_config.el")
(load-user-file "global_config.el")
(load-user-file "magit_config.el")

(load-user-file "sass-mode.el") ;; this isn't a user-made file w/e

(provide 'init)
;;; init.el ends here
