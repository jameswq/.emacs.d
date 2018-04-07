
;(require 'org)


(with-eval-after-load 'org
  (setq org-src-fontify-natively t)
  (setq org-agenda-files '("~/.emacs.d"))

  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "~/.emacs.d/gtd.org" "工作安排")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("c" "Chrome" entry (file+headline "~/.emacs.d/gtd.org" "Quick notes")
           "* TODO [#C] %?\n %(turtletaro/retrieve-chrome-current-tab-url)\n %i\n %U"
           :empty-lines 1)
          ))
  )

(global-set-key (kbd "C-c r") 'org-capture)

(provide 'init-org)

