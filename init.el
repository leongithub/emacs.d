(load (expand-file-name "~/quicklisp/slime-helper.el"))
;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

(tool-bar-mode -1) ;关闭Emacs工具栏
(global-linum-mode 'linum-node) ; 显示行号
(setq make-backup-files nil) ; 禁止自动备份文件

;; 编码设置UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; 设置本地HyperSpec
(setq common-lisp-hyperspec-root "file:/usr/share/doc/HyperSpec/")

(add-to-list 'load-path (expand-file-name "els" user-emacs-directory))
;(add-to-list 'load-path "~/.emacs.d/els") ; 把els路径加入到load-path，以后el插件就可以放放到这个目录

;;(require 'leon-org) 不好使，可能在~/.emacs.d/init.el为配置文件时好使
(load-library "leon-org") ; load org配置
(load-library "leon-theme") ; 设置主题
