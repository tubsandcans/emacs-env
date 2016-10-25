;;; package --- window config for init.el
;;; Commentary:
;;; Code:
(add-to-list 'load-path "~/emacs_env/tabbar/")
(setq inhibit-startup-screen t)
(setq scroll-margin 5
      scroll-preserve-screen-position 1)
(setq-default frame-title-format '((:eval (if (buffer-file-name)
                                              (abbreviate-file-name (buffer-file-name)) "%f"))))

```elisp (scroll-bar-mode 0)

(load-library "tabbar-tweaks")
;;; window_config.el ends here
