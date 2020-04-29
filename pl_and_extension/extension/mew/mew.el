;; -*-mode:lisp; coding:latin-1-*-

;; Author : J�r�me LELONG
;; address@server
;; http://cermics.enpc.fr/~lelong
;; Unlimited permission is granted to use, copy, distribute, and/or
;; modify this program.  There is NO WARRANTY.



;; ----------------------------------------------- ;;
;; to handle several accounts.
;; use C to change account when in summary mode
(setq mew-config-alist
      '(
        ("default"
         ("mailbox-type" . imap)
         ("proto" . "%")
         ("imap-server" . "mailhost1.ensta.fr")
         ("imap-ssl" . t)
         ("imap-user" . " ") ;; to be completed
         ("user" . " ") ;; to be completed
         ("name" . " ") ;; to be completed
         ("imap-delete" . nil)
         ("imap-size" . 0)
         ("smtp-server" . "mailhost1.ensta.fr")
         ("smtp-ssl" . nil )
         ("mail-domain" . "ensta.fr")
         ("fcc" . "%Sent")
         ("inbox-folder" . "%inbox")
         ("imap-friend-folder" . "%from")
         ("imap-trash-folder" . "%Trash")
         )
        ("cermics"
         ("mailbox-type" . imap)
         ("proto" . "%")
         ("imap-server" . "cermics.enpc.fr")
         ("imap-ssl" . t)
         ("imap-user" . " ") ;; to be completed
         ("user" . " ") ;; to be completed
         ("name" . " ") ;; to be completed
         ("imap-delete" . nil)
         ("imap-size" . 0)
         ("smtp-server" . "cermics.enpc.fr")
         ("mail-domain" . "cermics.enpc.fr")
         ("signature-file" . "~/.signature.mew")
         ("fcc" . "%mail_imap/Sent")
         ("inbox-folder" . "%inbox")
         ("imap-friend-folder" . "%mail_imap/from")
         ("imap-trash-folder" . "%mail_imap/Trash")
         )
        ("cermics-ssh"
         ("mailbox-type" . imap)
         ("proto" . "%")
         ("imap-ssh-server" . "cermics.enpc.fr")
         ("imap-server" . "cermics.enpc.fr")
         ("imap-ssl" . nil)
         ("imap-user" . " ") ;; to be completed
         ("imap-delete" . nil)
         ("imap-size" . 0)
         ("name" . " ") ;; to be completed
         ("user" . " ") ;; to be completed
         ("smtp-ssh-server" . "cermics.enpc.fr")
         ("smtp-server" . "cermics.enpc.fr")
         ("smtp-ssl" . nil)
         ("mail-domain" . "cermics.enpc.fr")
         ("fcc" . "%mail_imap/Sent")
         ("inbox-folder" . "%inbox")
         ("imap-friend-folder" . "%mail_imap/from")
         ("imap-trash-folder" . "%mail_imap/Trash")
         )
        ("inria"
         ("mailbox-type" . imap)
         ("imap-ssl" . t)
         ("proto" . "%")
         ("pop-server" . "imaps-rocq.inria.fr")
         ("name" . " ") ;; to be completed
         ("user" . " ") ;; to be completed
         ("smtp-server" . "mailhost.inria.fr")
         ("imap-user" . " ") ;; to be completed
         ("mail-domain" . "inria.fr")
         ("signature-file" . "~/.signature.mew")
         )
        ("neuf"
         ("mailbox-type" . imap)
         ("imap-ssl" . nil)
         ("proto" . "%")
         ("imap-server" . "imap.neuf.fr")
         ("name" . " ") ;; to be completed
         ("imap-user" . " ") ;; to be completed
         ("user" . " ") ;; to be completed
         ("imap-delete" . nil)
         ("imap-size" . 0)
         ("smtp-server" . "localhost")
         ("mail-domain" . "neuf.fr")
         ("inbox-folder" . "%debian")
         ("fcc" . "%Sent")
         ("imap-trash-folder" . "%Trash")
         ("signature-file" . "~/.signature.mew.neuf")
         )
        ("neuf-smtp"
         ("smtp-ssl" . nil )
         ("smtp-server" . "smtp.neuf.fr")
         )
        ("cermics-smtp"
         ("smtp-user" . "lelong")
         ("smtp-server" . "cermics.enpc.fr")
         ("smtp-ssl" . t )
         ("smtp-ssl-port" . 587)
         ("smtp-port" . 587)
         )
        ("inria-smtp"
         ("smtp-server" . "mailhost.inria.fr")
         ("smtp-ssl" . nil )
         ("smtp-port" . 25)
         )
        ("local"
         ("mailbox-type" . mbox)
         ("proto" . "+")
         ("name" . " ") ;; to be completed
         ("mbox-command-arg" . "-c -u -d /var/mail/jl")
         ("inbox-folder" . "+system")
         )
        )
      )


;; ----------------------------------------------- ;;
;; general config for all accounts

(setq mew-smtp-ssl-port "465")
(setq mew-prog-ssl "/opt/local/bin/stunnel")
(setq mew-ssl-verify-level 0)
(setq mew-pop-auth 'pass)
(setq mew-pop-size 0)
(setq mew-smtp-port "25")
(setq mew-mbox-command "incm")
(setq mew-auto-flush-queue t)
(setq mew-decode-broken t)
(setq mew-summary-form-mark-spam t)
;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; Default paths
(setq mew-mail-path "~/.Mail-Mew")
(setq mew-conf-path mew-mail-path)
(setq mew-addrbook-file "~/live/dotfiles/.Addressbook")

;;; remember last directory when saving
(setq mew-summary-preserve-dir t)
(setq mew-draft-preserve-dir t)
;; ----------------------------------------------- ;;





;; ----------------------------------------------- ;;
;; insert signature
(setq mew-signature-insert-last nil)
(setq mew-signature-as-lastpart nil)
(add-hook 'mew-before-cite-hook 'mew-header-goto-body)
;; (add-hook 'mew-draft-mode-newdraft-hook 'my-mew-draft-append-signature)
;; (defun my-mew-draft-append-signature ()
;;   (let ((mew-signature-insert-last t))
;;     (mew-draft-insert-signature)))
;; ----------------------------------------------- ;;



;; ----------------------------------------------- ;;
;; Password
;; WARNING: Password is stored in Emacs with RAW format.
(setq mew-use-cached-passwd t)    ;; nil
(setq mew-passwd-timer-unit 1)    ;; 10 (minutes)
(setq mew-passwd-lifetime 300000) ;; 2
;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; Biff
(setq mew-auto-get nil)
(setq mew-use-biff t)                         ;; nil
(setq mew-use-biff-bell t)                      ;; nil
(setq mew-imap-biff-interval 4)                 ;; 5 (minutes)
(setq mew-biff-interval mew-imap-biff-interval) ;; for Mew
;; ----------------------------------------------- ;;



(setq mew-use-alternative nil)

(defvar mew-field-circular-completion-switch
  '(("To:" . mew-circular-complete-domain)))


;; ----------------------------------------------- ;;
;; look and feel
;;(setq mew-decode-broken nil)
(setq mew-window-use-full t)
(setq mew-underline-lines-use t)
(setq mew-use-fancy-thread t)
(setq mew-use-fancy-highlight-body t)
(setq mew-fancy-highlight-body-prefix-width 10)
(setq mew-highlight-body-regex-comment "^[;#?%]+.*")
(setq mew-prog-imls-arg-list '("--thread=yes" "--indent=2"))
;;(setq mew-use-highlight-mouse-line t)
;; ceci pour remplacer le curseur par une barre
;; color�e, c'est selon les go�ts
(setq mew-use-highlight-cursor-line t)
(setq mew-highlight-cursor-line-face 'underline)
(setq mew-use-cursor-mark t)
;; La forme originale du sommaire ne me plait pas
;;(setq mew-summary-form
;;            '(type (5 date) " " (-4 size) " " (24 from) " " t (40 subj)))

(setq mew-summary-form
      '(type (5 date) " " (14 from) " " t (30 subj) "|" (0 body)))
(setq mew-sort-default-key "x-date-count")

(set-face-foreground   'mew-face-mark-delete    "red")
(set-face-bold-p       'mew-face-mark-delete  t)
(set-face-foreground   'mew-face-mark-refile    "darkgreen")
(set-face-bold-p       'mew-face-mark-refile  t)
(set-face-bold-p       'mew-face-mark-review  t)
(set-face-bold-p       'mew-face-mark-unread  t)


;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; external applications
(setq browse-url-netscape-program "open")
(setq browse-url-mozilla-program "open")
(setq thing-at-point-url-path-regexp "[~/A-Za-z0-9---_.${}#%,:]+")

(setq mew-prog-text/html         'mew-mime-text/html-w3m)
(setq mew-prog-text/html-ext    "open")
(setq mew-prog-text/xml         'mew-mime-text/html-w3m)
(setq mew-prog-text/xml-ext     "open")
(setq mew-prog-application/xml         nil)
(setq mew-prog-application/xml-ext     "open")
(setq browse-url-browser-function 'browse-url-netscape)
(setq mew-prog-pdf             "open")

(setq mew-prog-msword '("open" nil t))
(setq mew-prog-msexcel '("open" nil t))
(setq mew-prog-mspowerpoint '("open" nil t))
;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; address@server browse-url
(autoload 'browse-url-interactive-arg "browse-url")
(autoload 'browse-url-browser-function "browse-url"
  "Ask a WWW browser to show a URL." t)
(autoload 'browse-url-at-point "browse-url"
  "Ask a WWW browser to load the URL at or before point." t)
(autoload 'browse-url-at-mouse "browse-url"
  "Ask a WWW browser to load a URL clicked with the mouse." t)
(autoload 'browse-url-of-buffer "browse-url"
  "Ask a WWW browser to display BUFFER." t)
(autoload 'browse-url-of-file "browse-url"
  "Ask a WWW browser to display FILE." t)
(autoload 'browse-url-of-dired-file "browse-url"
  "In Dired, ask a WWW browser to display the file named on this line." t)
;; key bind
;;  Mew Message mode
(add-hook 'mew-message-mode-hook
          (function
           (lambda ()
            (local-set-key [mouse-2] 'browse-url-at-mouse)
            )))

;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; unread mark
(setq mew-use-unread-mark t)
;; only put U on "+inbox" "%inbox" "+debian"
(setq mew-unread-mark-list
      '((("+inbox" "%inbox" "+debian") t)
        (t nil)))
(setq mew-delete-unread-mark-by-mark nil)
;; ----------------------------------------------- ;;



;; ----------------------------------------------- ;;
;; Auto-refile
(defvar mew-refile-guess-control
  '(mew-refile-guess-by-alist
    mew-refile-guess-by-from
    mew-refile-guess-by-default)
  )

(setq mew-refile-guess-alist
      '(
        ("From:"
         ("address@server" . "%from/jfd")
         ("address@server" . "%from/bl")
         ("address@server" . "%from/jpc")
         ("address@server" . "%from/jacques.daniel")
         ("address@server" . "%from/roland.jarry")
         ("address@server" . "%teaching/ENSTA_3A")
         )
        ("To:"
         ("address@server" . "%from/jacques.daniel")
         ("address@server" . "%from/roland.jarry")
         ("premia-address@server" . "%premia-svn")
         ("premia-address@server" . "%premia-devel")
         )
        ("Subject:"
         ("\\(ENSTA\\|MA\\ 101\\|MA204\\|MAE51\\)" . "%teaching/ENSTA")
         ("Bug#" . "+debian")
         )
        )
      )

;; ----------------------------------------------- ;;


;; ----------------------------------------------- ;;
;; reply citation

;; 'body --> reply before citation
;; 'end  --> reply after citation
(setq mew-summary-reply-with-citation-position 'body)
(setq mew-cite-hook 'sc-cite-original)
(setq sc-preferred-header-style 1)
(setq sc-auto-fill-region-p t)
(setq sc-reference-tag-string "")

;; ;; when no supercite
;; (setq mew-addrbook-for-cite-label 'nickname)
;; (setq mew-draft-cite-fill-mode 'wrap)
;; (setq mew-draft-cite-label-fill-column 50)

;; (setq mew-cite-prefix-function (lambda()
;;                               (setq prefix (mew-cite-prefix-username))
;;                               (concat "\t test" prefix)
;;                               )
;;    )
;; (setq mew-addrbook-for-cite-prefix 'nickname)
;; (setq mew-cite-fields '("From:"))
;; (setq mew-cite-format "\n\n>>>>> %s wrote:\n\n")
;; (setq mew-cite-prefix "> ")
;; (setq mew-cite-fields '("From:" "Subject:" "Date:"))
;; (setq mew-cite-format
;; "\n\n-------- Original Message ---------\n\
;; From: %s\nSubject: %s\nDate: %s\n\n")
;; ----------------------------------------------- ;;




;; to use w3m
(setq mew-mime-multipart-alternative-list '("Text/Html" "Text/Plain" "*."))


(setq mew-mail-domain-list
      '("ensta.fr" "cermics.enpc.fr"))


;; ----------------------------------------------- ;;
;; dans affichage mew d'un mail, rendre visible X-Spam-Status
(setq mew-field-spec
      '(
        ("^Subject:$" t mew-face-header-important mew-face-header-subject)
        ("^From:$" t mew-face-header-important mew-face-header-from)
        ("^\\(To\\|Apparently-To\\):$" t mew-face-header-important
         mew-face-header-to)
        ("^\\(Cc\\|Bcc\\):$" t mew-face-header-important mew-face-header-to)
        ("^Newsgroups:$" t mew-face-header-important mew-face-header-to)
        ("^Date:$" t mew-face-header-important mew-face-header-date)
        ("^Reply-To:$" t)
        ("^X-Mailer:$" t)
        ("^X-Mew:$" t mew-face-header-important mew-face-header-xmew)
        ("\\(Received\\|Return-Path\\|Sender\\|Errors-To\\):$" nil)
        ("\\(Message-Id\\|Posted\\|In-Reply-To\\|References\\|Precedence\\):$"
         nil)
        ("^Delivered-" nil)
        ("^List-" nil)
        ("^\\(Mime-Version\\|Lines\\):$" nil)
        ("^From$" nil)
        ("^Status:$" nil)
        ("^X-Spam-Status" nil )
        ("^X-Spam-Probabilty" nil )
        ("^X-Spam-Flag" nil)
        ("^X-Spam-Level" nil)
        ("^X-" nil mew-face-header-private mew-face-header-marginal)
        ("Resent-" nil)
        ("^Received-SPF" nil)
        ("^\\(DKIM\\|DomainKey\\)-Signature:" nil)
        )
      )
;; pour voir toutes les adresses To mettre � nil
(setq mew-use-header-veil t)
;; ----------------------------------------------- ;;



;; ----------------------------------------------- ;;
;; Gnupg

;; (setq mew-protect-privacy-always t)
;; (setq mew-protect-privacy-always-type 'pgp-signature)
;; (setq mew-use-pgp-cached-passphrase t)
;; (setq mew-pgp-server-url-template "http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x4BB3C992")
;; ----------------------------------------------- ;;

;; ----------------------------------------------- ;;
;; Grep

(setq mew-prog-grep "grep")                  ;; `C-u ?'
(setq mew-prog-grep-opts '("-i" "-l" "-e"))  ;; '("-l" "-e")
(setq mew-prog-vgrep "grep")                 ;; Virtual mode
(setq mew-prog-vgrep-opts '("-i" "-l" "-e")) ;; '("-l" "-e")
;; ----------------------------------------------- ;;

;; ----------------------------------------------- ;;
;; Printing mail
(setq mew-field-for-printing '("Subject:" "From:" "To:" "Cc:" "Date:"))
(setq mew-print-function 'ps-print-buffer)
;; ----------------------------------------------- ;;

;; ----------------------------------------------- ;;
;; Spell chacking
(defun jl-spell-mail ( lang )
  (interactive "sLanguage  : fr br ")
  (if (string-equal lang "fr")
      (setq ispell-local-dictionary "francais")
      )
  (if (string-equal lang "br")
      (setq ispell-local-dictionary "british")
      )
  (save-excursion
    (beginning-of-buffer)
    (search-forward "----")
    (defvar debut (point))
    (search-forward "--")
    (defvar fin (point))
    (ispell-region debut fin)
    )
  )
;; ----------------------------------------------- ;;


;; ---------------------------------------- ;;
;; A few more hooks
(add-hook 'mew-draft-mode-hook
          '(lambda()
            (define-key mew-draft-mode-map "\C-zb"   'jl-spell-mail)
            (setq fill-column 70)
            (setq default-tab-width 4)
            (auto-fill-mode 1)
            (setq default-justification 'full)))

(add-hook 'mew-summary-mode-hook
          '(lambda ()
            (define-key mew-summary-mode-map "\C-zo"
             'mew-summary-auto-refile)
            (line-number-mode t)))
;; ----------------------------------------------- ;;


(defun jl-forward-inline ()
  "Forwards a message inline. Inspired from mew-summary-reply"
  (interactive)
  (mew-summary-msg-or-part
   (mew-summary-not-in-draft
    (mew-current-set-window-config)
    (let* ((owin (selected-window))
           (fld (mew-summary-folder-name))
           (msg (mew-summary-message-number2))
           (draft (mew-folder-new-message mew-draft-folder))
           (to (and mew-ask-to (mew-input-address (concat mew-to: " "))))
           (cc (and mew-ask-cc (mew-input-address (concat mew-cc: " "))))
           (asked (or mew-ask-to mew-ask-cc))
           msg-subject msg-to msg-from msg-date fwsubject cwin)
      (mew-summary-prepare-draft
       (mew-draft-find-and-switch draft t)
       (mew-delete-directory-recursively (mew-attachdir draft))
       (setq cwin (selected-window)) ;; draft
       (select-window owin)
       (mew-summary-set-message-buffer fld msg)
       (setq msg-subject (mew-header-get-value mew-subj:))
       (setq msg-to (mew-header-get-value mew-to:))
       (setq msg-from (mew-header-get-value mew-from:))
       (setq msg-date (mew-header-get-value mew-date:))
       (if msg-subject
           (setq fwsubject (mew-subject-simplify (concat mew-forward-string msg-subject))))
       (select-window cwin) ;; draft
       ;;
       (mew-draft-header fwsubject 'nl to cc nil nil nil nil asked)
       (mew-draft-mode)
       (end-of-buffer)
       (save-excursion
         (insert "----------- Original Message  ---------\n")
         (insert "Subject: ") (insert msg-subject) (insert "\n")
         (insert "Date: ") (insert msg-date) (insert "\n")
         (insert "From: ") (insert msg-from) (insert "\n")
         (insert "To: ") (insert msg-to) (insert "\n")
         (insert "\n\n")
         (mew-draft-yank)))))))

;; ------------------------------------------ ;;
;;using w3m
(when (locate-library "w3m")
(require 'w3m)
(condition-case nil
    (require 'mew-w3m)
  (file-error nil))
)



;;; END ;;
