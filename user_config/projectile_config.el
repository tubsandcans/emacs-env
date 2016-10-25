;;; package --- projectile_config
;;; Commentary:
;;; Code:

(require 'projectile)
(projectile-mode)
(add-hook 'haml-mode-hook 'projectile-rails-mode)
(add-hook 'coffee-mode-hook 'projectile-rails-mode)
(add-hook 'js-mode-hook 'projectile-rails-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;;; projectile_config.el ends here
