(add-hook 'csharp-mode-hook
	  (lambda ()
	    (c-set-offset 'substatement-open 0)
	    (c-set-offset 'case-label 0)
	    ))
