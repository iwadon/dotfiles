(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers) ; $B%"%$%I%k(B0.5$BIC$GJ]B8(B
(define-key ctl-x-map "as" 'auto-save-buffers-toggle)

(provide 'init-auto-save-buffers)

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
