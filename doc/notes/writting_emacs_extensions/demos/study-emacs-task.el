(defalias 'scroll-ahead 'scroll-up)

(defalias 'scroll-behind 'scroll-down)

(defun scroll-n-line-ahead (&optional n)
  (interactive "P")
  (scroll-ahead (prefix-numeric-value n))
  )
;;
(global-set-key "\C-z" 'scroll-n-line-ahead)

(move-to-window-line 20)


(defun read-only-if-symlink ()
  (if (file-symlink-p buffer-file-name)
      (progn
	(setq buffer-read-only t)
	(message "the buffer is symlink")
	)))

(defadvice switch-to-buffer (before existing-buffer activate compile)
  "when interactive, switch to existing buffers only"
  (interactive "b"))


(add-hook 'find-file-hooks 'read-only-if-symlink)



























(+ 1 1)

















(+ 1 1)
