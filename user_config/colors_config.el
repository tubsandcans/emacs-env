;;; package --- colors_config for init.el
;;; Commentary:
;;; Code:
;;;(require 'color-theme)
;;;(require 'color-theme-railscasts)

;;;(load-theme 'zenburn t)
;;;(load-theme 'suscolors t)
;;;(load-theme 'misterioso t)
(load-theme 'solarized-dark t)
(set-frame-font "Menlo 14")
(set-cursor-color "#c1cdc1")
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'sass-mode-hook 'rainbow-mode)

;;; colors_config.el ends here
