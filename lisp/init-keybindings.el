;; bind fun open-init-file() with <f2>
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "<f3>") 'open-spacemacs-config-file)

(global-set-key (kbd "\C-x\ \C-r") 'recentf-open-files)

(global-set-key "\C-s" 'swiper)
;(global-set-key (kbd "C-c C-r") 'ivy-resume)
;(global-set-key (kbd "<f6>") 'ivy-resume)
;(global-set-key (kbd "M-x") 'counsel-M-x)
;(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;(global-set-key (kbd "C-h f") 'counsel-describe-function)
;(global-set-key (kbd "C-h v") 'counsel-describe-variable)


(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

(global-set-key (kbd "C-c p f") 'counsel-git)
(global-set-key (kbd "C-c a") 'org-agenda)

(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(global-set-key (kbd "s-/") 'hippie-expand)
(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)
(global-set-key (kbd "M-s o") 'occur-dwim)
(global-set-key (kbd "M-s i") 'counsel-imenu)
(global-set-key (kbd "M-s e") 'iedit-mode) 


(global-set-key (kbd "C-=") 'er/expand-region)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;(global-set-key (kbd "C-c k m") 'which-key-show-keymap)
(global-set-key (kbd "C-c c j") 'helm-do-ag-project-root)

(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-k") 'delete-backward-char)

(global-set-key (kbd "C-a") 'xah-beginning-of-line-or-block)
(global-set-key (kbd "C-e") 'xah-end-of-line-or-block)

(provide 'init-keybindings) 
