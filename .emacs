(add-to-list 'load-path "~/.emacs.d/themes/")
(load "dark-krystal-theme")

(global-set-key (kbd "C-<f5>") (lambda () (interactive) (revert-buffer t t t) (message "BUFFER IS REVERTED")))
(global-set-key (kbd "C-<f8>") (lambda () (interactive) (whitespace-cleanup) (message "WHITESPACE CLEANUP")))
(global-set-key (kbd "M-[ h") 'beginning-of-line)
(global-set-key (kbd "M-[ f") 'end-of-line)
(global-set-key (kbd "C-<f6>") 'comment-region)
(global-set-key (kbd "C-<f7>") 'uncomment-region)

(global-linum-mode t)
(setq linum-format "%d ")

(show-paren-mode 1)
(setq scroll-step 1)

(electric-indent-mode 0)
(setq-default indent-tabs-mode nil)

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

(add-hook 'hs-minor-mode-hook '(lambda () (hs-hide-all)))

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
