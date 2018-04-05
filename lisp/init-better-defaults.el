

(global-linum-mode t)
(global-auto-revert-mode t)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; open recently files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)


(provide 'init-better-defaults)
