(require-package 'solarized-theme)
(require 'solarized-theme)
;(load-theme 'solarized-dark t)
;(load-theme 'solarized-light t)

;; 用 theme－changer 实现，白天用 light 主题，晚上用 dark 主题
;; 设置时区，可用 https://db-ip.com/ 查询自己 ip 地址
(setq calendar-location-name "Zhejiang") 
(setq calendar-latitude 30.2741)
(setq calendar-longitude 120.155)
(require-package 'theme-changer)
(require 'theme-changer)
(change-theme 'solarized-light 'solarized-dark)
