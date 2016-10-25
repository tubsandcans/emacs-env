;;; package --- colors_config for init.el
;;; Commentary:
;;; Code:
(require 'color-theme)
(require 'color-theme-railscasts)
(set-frame-font "Menlo 13")

(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'sass-mode-hook 'rainbow-mode)

;;; colors_config.el ends here
