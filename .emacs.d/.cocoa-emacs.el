(set-language-environment 'Japanese)
(global-hl-line-mode t)
(global-display-line-numbers-mode t)
(tool-bar-mode 0)

(require 'init-auto-save-buffers)
(require 'setup-elpa)

(load-theme 'dracula t)

;; splash screen$B$rL58z$K$9$k(B
;; (setq inhibit-splash-screen t)

;; backslash
(define-key global-map [?\M-(J\(B] "\\") ;; Option+(J\$B$G(Bbackslash "\"

(setq custom-file "~/.emacs.d/.cocoa-emacs-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
