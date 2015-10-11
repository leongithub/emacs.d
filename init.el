(add-to-list 'load-path (expand-file-name "els" user-emacs-directory))
;(add-to-list 'load-path "~/.emacs.d/els") ; 把els路径加入到load-path，以后el插件就可以放放到这个目录

;;(require 'init-org) 不好使，可能在~/.emacs.d/init.el为配置文件时好使
(load-library "init-base") ; 基本设置与未归类设置
(load-library "init-org") ; load org配置
(load-library "init-theme") ; 设置主题
(load-library "init-slime") ; slime
(load-library "init-auto-complete") ; auto-complete
(load-library "init-ido") ; ido
