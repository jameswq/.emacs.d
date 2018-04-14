(require 'package)
(package-initialize)
(setq package-archives '(
                         ("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")
                         ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
                         )
      )


;; find executable Path on OS X3
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(require 'hungry-delete)
(global-hungry-delete-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; open global Company complete
(global-company-mode 1)

;;config for web-mode）
(defun my-web-mode-indent-setup()
  (setq web-mode-markup-indent-offset 2);html
  (setq web-mode-css-indent-offset 2);css
  (setq web-mode-code-indent-offset 2);js
  )

(add-hook 'web-mode-hook 'my-web-mode-indent-setup)
( )

;;config for js2-refactor
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")


(require 'popwin)
(popwin-mode t)

(require 'org-pomodoro)

(require 'which-key)


(provide 'init-packages)
