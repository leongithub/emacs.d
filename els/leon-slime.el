(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

;; 设置本地HyperSpec
(setq common-lisp-hyperspec-root "file:/usr/share/doc/HyperSpec/")
