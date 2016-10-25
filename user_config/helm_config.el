;;; package --- helm config for init.el
;;; Commentary:

;;; Code:

(unless (member "helm.el" (directory-files default-directory))
  (setq package-load-list '((helm-core t) (helm t) (async t) (popup t)))
  (package-initialize))
(setq default-frame-alist '((vertical-scroll-bars . nil)
                            (tool-bar-lines . 0)
                            (fullscreen . nil)))
(require 'helm-config)
(helm-mode 1)
(define-key global-map [remap find-file] 'helm-find-files)
(define-key global-map [remap occur] 'helm-occur)
(define-key global-map [remap list-buffers] 'helm-buffers-list)
(define-key global-map [remap dabbrev-expand] 'helm-dabbrev)
(global-set-key (kbd "M-x") 'helm-M-x)
(unless (boundp 'completion-in-region-function)
  (define-key lisp-interaction-mode-map [remap completion-at-point] 'helm-lisp-completion-at-point)
  (define-key emacs-lisp-mode-map       [remap completion-at-point] 'helm-lisp-completion-at-point))
(setq projectile-completion-system 'helm)
(helm-projectile-on)

;;; helm_config.el ends here
