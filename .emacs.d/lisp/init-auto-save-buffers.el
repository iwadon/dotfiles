(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers) ; アイドル0.5秒で保存
(define-key ctl-x-map "as" 'auto-save-buffers-toggle)

(provide 'init-auto-save-buffers)

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
