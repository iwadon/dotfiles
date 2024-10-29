;(utf-translate-cjk-mode 1)

;; Mule-UCS
;(require 'un-define)			; Unicode
;(require 'un-tools)			; UTF-8/16
;(require 'jisx0213)			; JIS X 0213

(set-language-environment "Japanese")

;(load "term/bobcat")
;(terminal-init-bobcat)

;;; http://www.is.akita-u.ac.jp/pukiwiki/?Tips%2FEmacs#delete-char
;(when tty-erase-char
;  (define-key global-map (string tty-erase-char) 'backward-delete-char-untabify)
;  (define-key minibuffer-local-map (string tty-erase-char) 'backward-delete-char)
;  (setq search-delete-char tty-erase-char))

(setq custom-file "~/.emacs.d/.emacs22-custom.el")
(column-number-mode t)
(global-font-lock-mode t)
(global-hl-line-mode t)
(menu-bar-mode nil)
(size-indication-mode t)
(transient-mark-mode t)
(setq diff-switches "-up")
(setq display-time-mode t)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq hl-line-face 'highlight)

(if window-system
    (progn
      (scroll-bar-mode nil)
      (tool-bar-mode nil)))

;; CLON - 2006/04/02 - hackathon #3
;; http://unknownplace.org/memo/2006/04/02#e002
(iswitchb-mode t)

;; 同名のファイルを開いたとき Switch to buffer などでファイル名がわかりやすく見えるようになる設定
;; http://clouder.jp/yoshiki/mt/archives/000673.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; nDiary
;(load "~/.emacs.d/setup-ndiary.el")

;; Wanderlust
;(require 'wanderlust-startup)
;(load "~/.emacs.d/setup-wanderlust")

;(load "~/.emacs.d/emacs21-256color-hack")

;;(load "ac-mode")

;(require 'flymake)
;(add-hook 'find-file-hook 'flymake-find-file-hook)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(safe-local-variable-values (quote ((c-file-offsets (inextern-lang . 0) (innamespace . 0))))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
