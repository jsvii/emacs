;;; mytest --- for the test
;;; commentary:
;;; write gnu Emacs extensions
;;; code:
(defvar unscroll-point nil
  "Cursor position for next call to 'unscroll'.")

(defvar unscroll-hscroll nil
  "Hscroll for next call to 'unscroll' .")

(defvar unscroll-window-start nil
  "Window start for next call to 'unscroll'.")

(defun unscroll-may-remember ()
  "Remember where we started from."
  (setq this-command 'unscrollable)
  (if (not (get last-command 'unscrollable))
      (progn
        (set-marker unscroll-point (point))
        (set-marker unscroll-window-start (window-start))
        (setq unscroll-hscroll (window-hscroll))
        ))
  )

(defadvice scroll-up (before remember-for-unscroll
                             activate compile)
  "Remember where we started from, for 'unscroll'."
  (unscroll-may-remember))

(defadvice scroll-down (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for 'unscroll'."
  (unscroll-may-remember))

(defadvice scroll-left (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for 'unscroll'."
  (unscroll-may-remember))

(defadvice scroll-right (before remember-for-unscroll
                                activate compile)
  "Remember where we started from, for 'unscroll'."
  (unscroll-may-remember))

(defun unscroll ()
  "Revert to 'unscroll-point' and 'unscroll-window-start'."
  (interactive)
  (goto-char unscroll-point)
  (set-window-start nil unscroll-window-start)
  (set-window-hscroll nil unscroll-hscroll)
  )

;;

this-command

(defun test ()
  (+ 1 1))

(test)

(put 'test 'unscrollable t)

(get 'test 'unscrollable)


