;;; Package --- Settings for nice tabbar items
;;; Commentary:
;; to have an idea of what it looks like http://imgur.com/b0SNN
;; inspired by Amit Patel screenshot http://www.emacswiki.org/pics/static/NyanModeWithCustomBackground.png

;; Tabbar
(require 'tabbar)
;; Tabbar settings
(set-face-attribute
 'tabbar-default nil
 :background "gray20"
 :foreground "gray20"
 :family "Lucida Grande"
 :height 1
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray30"
 :foreground "white"
 :box '(:line-width 5 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "gray75"
 :foreground "black"
 :box '(:line-width 5 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 5 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray20"
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

