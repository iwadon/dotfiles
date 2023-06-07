(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;; (add-hook 'csharp-mode-hook
;; 	  (lambda ()
;; 	    (c-set-offset 'substatement-open 0)
;; 	    (c-set-offset 'case-label 0)
;; 	    ))
