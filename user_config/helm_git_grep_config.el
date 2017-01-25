;;; package --- helm_git_grep_config for init.el
;;; Commentary:
;;; Code:
(require 'helm-git-grep) ;; Not necessary if installed by package.el
(global-set-key (kbd "C-c g") 'helm-git-grep)
;; Invoke `helm-git-grep' from isearch.
(define-key isearch-mode-map (kbd "C-c g") 'helm-git-grep-from-isearch)
;; Invoke `helm-git-grep' from other helm.
(eval-after-load 'helm
  '(define-key helm-map (kbd "C-c g") 'helm-git-grep-from-helm))

;;; helm_git_grep_config.el ends here
