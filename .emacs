;;; -*- mode: emacs-lisp; coding: iso-2022-jp-unix; syntax: emacs-lisp; -*-

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp")
(add-to-list 'load-path "~/local/share/emacs/site-lisp")
(add-to-list 'load-path "~/.emacs.d")

(cond
 ((featurep 'ns)
  (load "~/.emacs.d/.cocoa-emacs"))
 ((featurep 'meadow)
  (cond
   ((string-match "3.00" (Meadow-version))
    (load "~/.emacs.d/.meadow-3.00.el"))
   ((string-match "2.20" (Meadow-version))
    (load "~/.emacs.d/.meadow-2.20.el"))
   ((string-match "2.10" (Meadow-version))
    (load "~/.emacs.d/.meadow-2.10.el"))
   (t
    (load "~/.emacs.d/.meadow.el"))))
 ((featurep 'carbon-emacs-package)
  (load "~/.emacs.d/.carbon-emacs-package"))
 ((featurep 'xemacs)
  (load "~/.emacs.d/.xemacs.el"))
 ((string-match "^24\\." emacs-version)
  (load "~/.emacs.d/.emacs24.el"))
 ((string-match "^23\\." emacs-version)
  (load "~/.emacs.d/.emacs23.el"))
 ((string-match "^22\\." emacs-version)
  (load "~/.emacs.d/.emacs22.el"))
 ((string-match "^21\\." emacs-version)
  (load "~/.emacs.d/.emacs21.el"))
 ((string-match "^20\\." emacs-version)
  (load "~/.emacs.d/.emacs20.el"))
 (t
  (load "~/.emacs.d/.emacs19.el")))
