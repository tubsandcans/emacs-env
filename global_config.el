;;; package --- global variables for init.el
;;; Commentary:
;;; Code:
(exec-path-from-shell-initialize)
(global-auto-revert-mode 1) ;; Always reload the file if it changed on disk
(global-undo-tree-mode)
(cua-selection-mode t)
(show-paren-mode 1)

(add-hook 'after-init-hook #'global-flycheck-mode)
(column-number-mode 1)

;;; global_config.el ends here
