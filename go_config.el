;;; package --- go_config for init.el
;;; Commentary:
;;; Code:
(defun my-go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq tab-width 4 indent-tabs-mode 1)
  (push 'company-go company-backends))
(add-hook 'go-mode-hook 'my-go-mode-hook)
;;; go_config.el ends here
