;;; package: keyboard config for init.el
;;; Commentary:
;;; Code:
(global-set-key [f3] 'ansi-term)
(global-set-key [f4] 'goto-line)
(global-set-key [f5] 'query-replace)
(global-set-key [f6] 'linum-mode)
(global-set-key "\M-g" 'magit-status)
(global-set-key (kbd "s-{") 'tabbar-backward-tab)
(global-set-key (kbd "s-}") 'tabbar-forward-tab)
(global-set-key (kbd "s-z") 'undo)
(global-set-key [(shift super z)] 'redo)
(global-set-key [(super up)] 'tabbar-backward-group)
(global-set-key [(super down)] 'tabbar-forward-group)
;;; keyboard_config.el ends here

