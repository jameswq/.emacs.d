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

(load-theme 'monokai)

(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
