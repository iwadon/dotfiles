(set-language-environment 'Japanese)
(global-hl-line-mode t)
(global-display-line-numbers-mode t)
(tool-bar-mode 0)

(require 'init-auto-save-buffers)
(require 'setup-elpa)

(load-theme 'dracula t)

;; splash screenを無効にする
;; (setq inhibit-splash-screen t)

;; backslash
(define-key global-map [?\M-\] "\\") ;; Option+\でbackslash "\"

(setq custom-file "~/.emacs.d/.cocoa-emacs-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
