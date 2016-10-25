;;; package -- ruby configuration for init.el
;;; Commentary:

;;; Code:
(setq ruby-deep-indent-paren nil)

(require 'robe)
(defun my-ruby-mode-hook ()
  (robe-mode)
  (ruby-tools-mode)
  (projectile-rails-mode)
  (eval-after-load 'company
    '(push 'company-robe company-backends)))
(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))
(global-company-mode t)
;;; ruby_config.el ends here
