;;; package --- go_config for init.el
;;; Commentary:
;;; Code:
(defun my-go-mode-hook ()
  (add-hook 'before-save-hook 'gofmt-before-save)
  (setq tab-width 2 indent-tabs-mode 1)
  (push 'company-go company-backends)
  (set (make-local-variable 'company-backends) '(company-go)))
(add-hook 'go-mode-hook 'my-go-mode-hook)
(exec-path-from-shell-copy-env "GOPATH")
;;; go_config.el ends here
