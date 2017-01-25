;;; package --- flycheck_config for init.el
;;; Commentary:
;;; Code:

(add-hook 'after-init-hook #'global-flycheck-mode)
;; disable jshint since we prefer eslint checking
(setq-default flycheck-disabled-checkers
	      '(json-jsonlist)
	      '(javascript-jshint))

;; use eslint with web-mode for jsx files
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode))

;; customize flycheck temp file prefix
(setq-default flycheck-temp-prefix ".flycheck")

;;; flycheck_config.el ends here
