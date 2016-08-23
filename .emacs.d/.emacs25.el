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
      ;; (set-face-attribute 'default nil :family "Ricty Diminished Discord" :height 120)
      ;; (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty Diminished Discord"))
      ;; (setq face-font-rescale-alist '(("Ricty Diminished Discord" . 1.08)))
      (add-to-list 'default-frame-alist '(font . "Myrica M"))

      ;; フレームの透明度
      (add-to-list 'default-frame-alist '(alpha 85 50))

      ;; フレームサイズと位置の指定
      (setq default-frame-alist
	    (append
	     '(
	       ;;(top . 0)       ;; フレームの Y 位置(ピクセル数)
	       ;;(left . 600)    ;; フレームの X 位置(ピクセル数)
	       (width . 160)     ;; フレーム幅(文字数)
	       (height . 56)     ;; フレーム高(文字数)
	       ) default-frame-alist))
      ))

(package-initialize)

(load "init-auto-save-buffers")

;; Local variables:
;; coding: iso-2022-jp-unix
;; End:
