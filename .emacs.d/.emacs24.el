(set-language-environment 'Japanese)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;; (if (eq system-type 'windows-nt)
;;     (progn
;;       (setq default-process-coding-system '(utf-8 . cp932))))

(blink-cursor-mode t)
(column-number-mode t)
;(display-battery-mode t)
(display-time-mode t)
(global-font-lock-mode t)
(iswitchb-mode t)
;(icomplete-mode t)
;(ido-mode t)
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

(load "init-auto-save-buffers")
(global-cwarn-mode t)

(if window-system
    (progn
      (scroll-bar-mode -1)
      (tool-bar-mode -1)

      ;; (http://d.hatena.ne.jp/eggtoothcroc/20130102/p1$B$r;29M$K$7$?(B)
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
      ;(set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 158)
      (set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 120)
      (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty Diminished Discord"))
      (setq face-font-rescale-alist '(("Ricty Diminished Discord" . 1.08)))

      ;; $B%U%l!<%`$NF)L@EY(B
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

;; dired$B$GI=<($5$l$kF|IU$N=q<0$rJQ99$9$k(B
(setq ls-lisp-format-time-list (quote ("%2b %d %H:%M" "%2b %d  %Y")))

(load-theme 'tango-dark t)

(require 'setup-elpa)

;(load "setup-auto-complete")
;(load "setup-auto-save-buffers-enhanced")
;(load "setup-markdown-mode")
;(load "setup-csharp-mode")
;(load "setup-mmm-mode")
;(require 'setup-mmm-mode)
;(require 'ruby-additional)
;(load "setup-powerline")
;(load "setup-clang-format")

;; $B9TKv$N6uGr$rI=<($9$k(B
(when (boundp 'show-trailing-whitespace)
  (setq-default show-trailing-whitespace t))

(require 'server)
(unless (server-running-p)
  (server-start))

(setq custom-file "~/.emacs.d/.emacs24-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
