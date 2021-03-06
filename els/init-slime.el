;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy))

;; 设置本地HyperSpec
(setq common-lisp-hyperspec-root "file:/usr/share/doc/HyperSpec/")

;; ac-slime
(require-package 'ac-slime)
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))
