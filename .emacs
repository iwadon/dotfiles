;;; -*- mode: emacs-lisp; coding: iso-2022-jp-unix; syntax: emacs-lisp; -*-

(add-to-list 'load-path "~/.emacs.d/lisp")

(cond
 ((featurep 'ns)
  (load "~/.emacs.d/.cocoa-emacs"))
 (t
  (progn
    (string-match "^\\([0-9]+\\)\\." emacs-version)
    (load (concat "~/.emacs.d/.emacs" (match-string 1 emacs-version) ".el")))))
