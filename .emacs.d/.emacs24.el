;; from http://detail.chiebukuro.yahoo.co.jp/qa/question_detail/q1497427004
(coding-system-put 'utf-8-unix 'category 'utf-8-unix)
(set-language-info
 "Japanese"
 'coding-priority (cons 'utf-8-unix
			(get-language-info "Japanese" 'coding-priority)))
(set-language-environment "Japanese")
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)

(blink-cursor-mode t)
(column-number-mode t)
;(display-battery-mode t)
(display-time-mode t)
(global-font-lock-mode t)
;;(iswitchb-mode t)
(icomplete-mode t)
(line-number-mode t)
(menu-bar-mode nil)
(show-paren-mode t)
(size-indication-mode t)
(transient-mark-mode t)

(setq diff-switches "-up")
(setq display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)

(global-hl-line-mode t)
(setq hl-line-face 'highlight)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'auto-save-buffers)
(run-with-idle-timer 0.5 t 'auto-save-buffers) ; アイドル0.5秒で保存
(define-key ctl-x-map "as" 'auto-save-buffers-toggle)

(if window-system
    (progn
      (scroll-bar-mode nil)
      (tool-bar-mode nil)))

(require 'setup-elpa)

(setq custom-file "~/.emacs.d/.emacs24-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
