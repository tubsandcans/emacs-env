;;; package --- projectile_config
;;; Commentary:
;;; Code:

(require 'projectile)
(projectile-mode)
(setq projectile-project-root t)
(add-hook 'haml-mode-hook 'projectile-rails-mode)
(add-hook 'coffee-mode-hook 'projectile-rails-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(eval-after-load 'projectile-rails
  (defun projectile-rails-root ()
    (projectile-project-root)))

;;; projectile_config.el ends here
