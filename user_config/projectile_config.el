;;; package --- projectile_config
;;; Commentary:
;;; Code:

(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(add-hook 'haml-mode-hook 'projectile-rails-mode)
(add-hook 'coffee-mode-hook 'projectile-rails-mode)
(add-hook 'js-mode-hook 'projectile-rails-mode)
;;; (add-hook 'projectile-mode-hook 'projectile-rails-on)

;;; projectile_config.el ends here
