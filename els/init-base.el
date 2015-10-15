(tool-bar-mode -1) ;关闭Emacs工具栏
(global-linum-mode 'linum-node) ; 显示行号
(setq make-backup-files nil) ; 禁止自动备份文件

;; 编码设置UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; 保存上次打开的文件记录。M-x desktop-clear 清除所有 buffers
(require 'desktop)
(desktop-save-mode 1) ; 自动保存，M-x desktop-save 手动保存
(setq history-length 250)
(add-to-list 'desktop-globals-to-save 'file-name-history)

;; Make "C-x o" prompt for a target window when there are more than 2
(require-package 'switch-window)
(require 'switch-window)
(setq-default switch-window-shortcut-style 'alphabet) ; 用字母而不是数字
(global-set-key (kbd "C-x o") 'switch-window)

;; 设置显示尾部空格
(setq-default show-trailing-whitespace t)
