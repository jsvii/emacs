;;; Commentary:
;;; My Mew configuration files
;;;

;;; Code: the mew
(setq mew-config-alist
      '(
        ("default"
         ("name"         .  "12222222222")
         ("user"         .  "12222222222")
         ("mail-domain"  .  "qq.com")
         ("pop-server"   .  "pop.qq.com")
         ("pop-ssl"     .  t)
         ("pop-port"     .  "995")
         ("pop-user"     .  "1594717267")
         ("inbox-folder".  "+inbox-qq")
         ("smtp-ssl" . nil )
         ("smtp-server"  .  "smtp.qq.com")
         ("smtp-port"    .  "25")
         ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5"))
         )
        ("augmentum"
         ("name"         .  "12222222222@augmentum.com.cn")
         ("user"         .  "12222222222@augmentum.com.cn")
         ("mail-domain"  .  "qq.com")
         ("pop-server"   .  "mail2.augmentum.com.cn")
         ("pop-ssl"     .  nil)
         ("pop-port"     .  "110")
         ("pop-user"     .  "leozhang@augmentum.com.cn")
         ("inbox-folder".  "+inbox-augmentum")
         ("smtp-ssl" . nil )
         ("smtp-server"  .  "mail2.augmentum.com.cn")
         ("smtp-port"    .  "25")
         ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5"))
         )
        ("163"
         ("name"         .  "12222222222")
         ("user"         .  "12222222222")
         ("mail-domain"  .  "163.com")
         ("pop-server"   .  "pop.163.com")
         ("pop-ssl"     .  t)
         ("pop-port"     .  "995")
         ("pop-user"     .  "ypqyjdt")
         ("inbox-folder".  "+inbox-163")
         ("smtp-ssl" . nil )
         ("smtp-server"  .  "smtp.163.com")
         ("smtp-port"    .  "25")
         ("smtp-auth-list"  .  ("PLAIN" "LOGIN" "CRAM-MD5"))
         )
        ))

(setq mew-prog-ssl "/usr/bin/stunnel4")

;;(setq mew-pop-ssl nil)
(setq mew-smtp-ssl-port "465")

(setq mew-ssl-verify-level 0)
(setq mew-pop-auth 'pass)
(setq mew-pop-size 0)
(setq mew-smtp-port "25")
(setq mew-mbox-command "incm")
(setq mew-auto-flush-queue t)
(setq mew-decode-broken t)
(setq mew-summary-form-mark-spam t)



(setq mew-mail-path "~/.Mail-Mew")
(setq mew-conf-path mew-mail-path)
(provide 'init-mew)
