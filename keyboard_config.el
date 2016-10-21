;;; package: keyboard config for init.el
;;; Commentary:
;;; Code:
(global-set-key [f3] 'shell)
(global-set-key [f4] 'goto-line)
(global-set-key [f5] 'query-replace)
(global-set-key [f6] 'linum-mode)
(global-set-key "\M-g" 'magit-status)
(global-set-key (kbd "s-{") 'tabbar-backward-tab)
(global-set-key (kbd "s-}") 'tabbar-forward-tab)
(global-set-key (kbd "s-z") 'undo)
(global-set-key [(shift super z)] 'redo)
;;; keyboard_config.el ends here
