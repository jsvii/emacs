;; each element of ENTRIES has from
;; (NAME (VALUE-HIGH . VALUE-LOW))
;; this is the end
;; this is the end WRITESTAMP((helloworld))


(defvar writestamp-format "%C"
  "*Format for writestamps (c.f. `format-time-string').")

(format-time-string "%C"
                    (current-time))

(current-time)

06/08/2018

(defun update-writestamps ()
  "Find writestamps and replace them with the current time."
  (interactive "*")
  (save-excursion
    (save-restriction
      (save-match-data
        (widen)
        (goto-char (point-min))
        (let ((regexp (concat "^"
                              (regexp-quote writestamp-prefix)
                              "\\(.*\\)"
                              (regexp-quote writestamp-suffix)
                              "$")))

          (message regexp)
          ))))
  nil)


(defvar testreg
  (concat "^"
          (regexp-quote writestamp-prefix)
          "\\(.*\\)"
          (regexp-quote writestamp-suffix)
          "$") ) 

(progn
  (goto-char (point-min))
  (while (re-search-forward "WRITESTAMP((\\(.*\\)))$" nil t)
    (replace-match "helloworld" t t nil 1)
    )
  )


(progn
  (goto-char (point-min))
  (re-search-forward "WRITESTAMP((\\(.*\\)))$" nil t)
  )





