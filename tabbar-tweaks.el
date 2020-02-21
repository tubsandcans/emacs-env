;;; Package --- Settings for nice tabbar items
;;; Commentary:
;; to have an idea of what it looks like http://imgur.com/b0SNN
;; inspired by Amit Patel screenshot http://www.emacswiki.org/pics/static/NyanModeWithCustomBackground.png

;;; Code:
;; Tabbar
(require 'tabbar)
;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "#eee8d5"
 :foreground "#eee8d5"
 :family "Lucida Grande"
 :height 1
 :box '(:line-width 1 :color "#eee8d5" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray60"
 :foreground "#fdf6e3"
 :box '(:line-width 5 :color "gray60" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "#586e75"
 :foreground "#fdf6e3"
 :box '(:line-width 5 :color "#586e75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "gray20"
 :foreground "#eee8d5"
 :underline nil
 :box '(:line-width 5 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "#eee8d5" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "#eee8d5"
 :height 0.6)

;; Change padding of the tabs
;; we also need to set separator to avoid overlapping tabs by highlighted tabs
(custom-set-variables
 '(tabbar-separator (quote (0.5))))
;; adding spaces
(defun tabbar-buffer-tab-label (tab)
    "Return a label for TAB.
That is, a string used to represent it on the tab bar."
    (let ((label  (if tabbar--buffer-show-groups
		      (format "[%s]  " (tabbar-tab-tabset tab))
		    (format "%s  " (tabbar-tab-value tab)))))
      ;; Unless the tab bar auto scrolls to keep the selected tab
      ;; visible, shorten the tab label to keep as many tabs as possible
      ;; in the visible area of the tab bar.
      (if tabbar-auto-scroll-flag
	  label
	(tabbar-shorten
	 label (max 1 (/ (window-width)
			 (length (tabbar-view
				  (tabbar-current-tabset)))))))))

(defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
  "Return the tab group name to which the current buffer belongs.
There are two groups: Emacs buffers (those whose name starts with '*', plus
dired buffers), and the rest.  This works at least with Emacs v24.2 using
tabbar.el v1.7."
     (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
		 ((eq major-mode 'dired-mode) "emacs")
		 (t "user"))))
 (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(tabbar-mode 1)
(provide 'tabbar-tweaks)
;;; tabbar-tweaks ends here
