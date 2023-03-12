(require 'init-auto-save-buffers)

(setq custom-file "~/.emacs.d/.emacs28-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
