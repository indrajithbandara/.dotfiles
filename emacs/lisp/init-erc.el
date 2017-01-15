;; Provide here IRC settings, bitlbee and so forth...

(defun setup-erc ()
  (interactive)
  ;; Auto-connect to channels in the background instead of grabbing buffers...
  (setq erc-join-buffer 'bury)
  (setq erc-autojoin-channels-alist
        '(("freenode.net" "#emacs" "#qutebrowser" "#lisp" "#mezzano" "#guix" "#guile")
          ("localhost" "#bitlbee", "#nextcom7")))
  (erc :server "irc.freenode.net" :port 6667 :nick "ryanwatkins")
  (erc :server "localhost" :port 6667 :nick "ryanwatkins" :password "Chelsea2014!")
  (erc-tls :server "gophers.irc.slack.com" :port 8000 :nick "ryanwatkins" :password "gophers.C62Yb8k6qomtAztcAEVP")
  )


(add-hook 'erc-mode-hook
          '(lambda ()
             (define-key erc-mode-map "\C-m" 'newline)
             (define-key erc-mode-map "\C-c\C-c" 'erc-send-current-line)
             ))

(provide 'init-erc)
