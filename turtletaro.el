(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))

(defun open-spacemacs-config-file()
  (interactive)
  (find-file "~/.spacemacs"))


(require 'init-packages )
(require 'init-ui)

(require 'init-better-defaults)
(require 'init-org)
(require 'init-keybindings)

(setq  custom-file (expand-file-name "lisp/custom.el" user-emacs-directory)) 
(load-file custom-file)
