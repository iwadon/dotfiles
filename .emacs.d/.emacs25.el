(setq custom-file "~/.emacs.d/.emacs25-custom.el")
(if (file-exists-p (expand-file-name custom-file))
    (load (expand-file-name custom-file) t nil nil))

(blink-cursor-mode t)
(column-number-mode t)
(display-time-mode t)
(global-font-lock-mode t)
(iswitchb-mode t)
(line-number-mode t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode t)
(size-indication-mode t)
(tool-bar-mode -1)
(transient-mark-mode t)

(global-hl-line-mode t)
(setq hl-line-face 'highlight)

(global-cwarn-mode t)

(load-theme 'tango-dark t)

(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(require 'server)
(unless (server-running-p)
  (server-start))

(if window-system
    (progn
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
      ;; (set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 120)
      ;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty Diminished Discord"))
      ;; (setq face-font-rescale-alist '(("Ricty Diminished Discord" . 1.08)))
      (add-to-list 'default-frame-alist '(font . "Myrica M"))

      ;; $B%U%l!<%`$NF)L@EY(B
      (add-to-list 'default-frame-alist '(alpha 85 50))

      ;; $B%U%l!<%`%5%$%:$H0LCV$N;XDj(B
      (setq default-frame-alist
	    (append
	     '(
	       ;;(top . 0)       ;; $B%U%l!<%`$N(B Y $B0LCV(B($B%T%/%;%k?t(B)
	       ;;(left . 600)    ;; $B%U%l!<%`$N(B X $B0LCV(B($B%T%/%;%k?t(B)
	       (width . 160)     ;; $B%U%l!<%`I}(B($BJ8;z?t(B)
	       (height . 56)     ;; $B%U%l!<%`9b(B($BJ8;z?t(B)
	       ) default-frame-alist))
      ))

(package-initialize)

(load "init-auto-save-buffers")

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
