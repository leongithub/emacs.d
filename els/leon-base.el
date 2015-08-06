(tool-bar-mode -1) ;关闭Emacs工具栏
(global-linum-mode 'linum-node) ; 显示行号
(setq make-backup-files nil) ; 禁止自动备份文件

;; 编码设置UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; 添加 melpa 包，安装 auto-complete 等包
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (package-initialize))
