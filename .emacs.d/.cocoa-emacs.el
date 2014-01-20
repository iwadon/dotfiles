(setq custom-file "~/.emacs.d/.cocoa-emacs-custom.el")

(set-language-environment 'Japanese)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;(load "term/bobcat")
;(terminal-init-bobcat)

(blink-cursor-mode t)
(column-number-mode t)
;(display-battery-mode t)
(display-time-mode t)
(global-font-lock-mode t)
(iswitchb-mode t)
(line-number-mode t)
(menu-bar-mode t)
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

(load "init-auto-save-buffers")

(if window-system
    (progn
      (scroll-bar-mode -1)
      (tool-bar-mode -1)

      ;; M+ (http://hanzubon.jp/node/282 $B$N@_Dj$r;29M$K$7$?(B)
      ;; (set-default-font "Ricty Discord-16")
      ;; (set-fontset-font (frame-parameter nil 'font) 'japanese-jisx0208 '("Ricty Discord" . "unicode-bmp"))
      ;; (set-fontset-font (frame-parameter nil 'font) 'katakana-jisx0201 '("Ricty Discord" . "unicode-bmp"))
      ;; (set-fontset-font (frame-parameter nil 'font) 'ascii '("Ricty Discord" . "unicode-bmp"))
      ;; ;; (set-fontset-font (frame-parameter nil 'font) 'unicode '("Ricty Discord" . "unicode-bmp"))

      ;; http://d.hatena.ne.jp/eggtoothcroc/20130102/p1
      ;; $B%U%)%s%H(B
      ;; abcdefghijklmnopqrstuvwxyz
      ;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
      ;; `1234567890-=\[];',./
      ;; ~!@#$%^&*()_+|{}:"<>?
      ;;
      ;; $B0mFu;2;M8^0mFu;2;M8^0mFu;2;M8^0mFu;2;M8^0mFu;2;M8^0mFu;2;M8^(B
      ;; 123456789012345678901234567890123456789012345678901234567890
      ;; ABCde$B#A#B#C#d#e(B
      ;;
      ;; $B(#(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!($(B
      ;; $B("!!!!!!!!!!!!!!!!!!!!!!!!!!7S@~(B                            $B("(B
      ;; $B(&(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(!(%(B
      ;;
      (set-face-attribute 'default nil :family "Ricty Discord" :height 208)
      (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty"))
      (setq face-font-rescale-alist '(("Ricty" . 1.08)))

      (add-to-list 'default-frame-alist '(alpha 85 50))

      ;; $B%U%l!<%`%5%$%:$H0LCV$N;XDj(B
      (setq initial-frame-alist
	    (append
	     '(
	       ;;(top . 0)       ;; $B%U%l!<%`$N(B Y $B0LCV(B($B%T%/%;%k?t(B)
	       ;;(left . 600)    ;; $B%U%l!<%`$N(B X $B0LCV(B($B%T%/%;%k?t(B)
	       (width . 160)     ;; $B%U%l!<%`I}(B($BJ8;z?t(B)
	       (height . 56)     ;; $B%U%l!<%`9b(B($BJ8;z?t(B)
	       ) initial-frame-alist))
      )
  (progn
    (menu-bar-mode -1)))

(load-theme 'tango-dark t)

;(add-hook 'c-mode-common-hook
;	  (lambda()
;	    (c-set-offset 'inextern-lang 0) ; extern "C" { $B$G%$%s%G%s%H$7$J$$(B
;	    (c-set-offset 'innamespace 0)   ; namespace { $B$G%$%s%G%s%H$7$J$$(B
;	    ))

;(load "~/.emacs.d/setup-auto-complete")

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
