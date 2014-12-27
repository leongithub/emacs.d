;; org-src 代码显示高亮
;; #+BEGIN_SRC lang 高亮 #+END_SRC
(setq org-src-fontify-natively t)


(add-hook 'org-mode-hook 'fn-hook)


(defun fn-hook ()
  ; 把org-insert-src-block 绑定到 C-c s i按键上
  (local-set-key (kbd "C-c s i") 'org-insert-src-block)
  ; org-mode自动换行
  (setq truncate-lines nil))


; 代码生成#+BEGIN_SRC形式，也可用自带的 “<s<TAB>”。不过自己定义函数更方便
(defun org-insert-src-block (src-code-type)
  "Insert a `SRC-CODE-TYPE' type source code block in org-mode."
  (interactive
   (let ((src-code-types
          '("lisp" "scheme" "sh" "java" "python" "C" 
	    "emacs-lisp" "js" "C++" "css" "perl" "ruby")))
     (list (ido-completing-read "Source code type: " src-code-types))))
  (progn
    (insert (format "#+BEGIN_SRC %s -n\n" src-code-type))
    (newline)
    (insert "#+END_SRC\n")
    (previous-line 2)
    (org-edit-src-code)))
