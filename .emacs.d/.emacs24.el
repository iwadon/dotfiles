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

      ;; (http://d.hatena.ne.jp/eggtoothcroc/20130102/p1を参考にした)
      ;; フォント
      ;; abcdefghijklmnopqrstuvwxyz
      ;; ABCDEFGHIJKLMNOPQRSTUVWXYZ
      ;; `1234567890-=\[];',./     
      ;; ~!@#$%^&*()_+|{}:"<>?     
      ;;
      ;; 壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五壱弐参四五
      ;; 123456789012345678901234567890123456789012345678901234567890
      ;; ABCdeＡＢＣｄｅ
      ;;
      ;; ┌─────────────────────────────┐
      ;; │　　　　　　　　　　　　　罫線                            │
      ;; └─────────────────────────────┘
      ;;
      ;(set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 158)
      (set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 120)
      (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty Diminished Discord"))
      (setq face-font-rescale-alist '(("Ricty Diminished Discord" . 1.08)))

      ;; フレームの透明度
      (add-to-list 'default-frame-alist '(alpha 85 50))

      ;; フレームサイズと位置の指定
      (setq initial-frame-alist
	    (append
	     '(
	       ;;(top . 0)       ;; フレームの Y 位置(ピクセル数)
	       ;;(left . 600)    ;; フレームの X 位置(ピクセル数)
	       (width . 160)     ;; フレーム幅(文字数)
	       (height . 56)     ;; フレーム高(文字数)
	       ) initial-frame-alist))
      )
  (progn
    (menu-bar-mode -1)))

;; diredで表示される日付の書式を変更する
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

;; 行末の空白を表示する
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
