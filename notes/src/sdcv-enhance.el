(defun say-hello ()
  (write-line "hello, leo")
  )
;;
(defun sdcv-region-or-word ()
  "Return region or word around point.
If `mark-active' on, return region string.
Otherwise return word around point."
  (if mark-active
      (buffer-substring-no-properties (region-beginning)
                                      (region-end))
    (thing-at-point 'word)))
(region-end)
(region-end)
(region-beginning)
(buffer-substring-no-properties (region-beginning)
                                (region-end))
(write-line "hello")
(message "here your infor,: %s"
         (buffer-substring-no-properties (region-beginning)
                                         (region-end)))

