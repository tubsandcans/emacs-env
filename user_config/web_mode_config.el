;;; package --- web-mode_config for init.el
;;; Commentary:
;;; Code:

(add-to-list 'auto-mode-alist '("\\.erb\\'"    . web-mode))       ;; ERB
(add-to-list 'auto-mode-alist '("\\.html?\\'"  . web-mode))       ;; Plain HTML
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))       ;; JS + JSX
(add-to-list 'auto-mode-alist '("\\.es6\\'"    . web-mode))       ;; ES6
(add-to-list 'auto-mode-alist '("\\.css\\'"    . web-mode))       ;; CSS
(add-to-list 'auto-mode-alist '("\\.scss\\'"   . web-mode))       ;; SCSS
(add-to-list 'auto-mode-alist '("\\.sass\\'"   . web-mode))       ;; SASS
(add-to-list 'auto-mode-alist '("\\.php\\'"    . web-mode))       ;; PHP

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode, adjust indentation."
  ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  "For better jsx syntax-highlighting in web-mode."
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))
;;; web_mode_config.el ends here
