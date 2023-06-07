(defun custom-compile ()
  "Compile in the directory of the existing *compilation* buffer if it exists, otherwise ask the user for a directory."
  (interactive)
  (let* ((compilation-buffer-name "*compilation*")
	 (default-directory
	   (if (get-buffer compilation-buffer-name)
	       (with-current-buffer compilation-buffer-name
		 default-directory)
	     (read-directory-name "Directory: "))))
    (setq compile-command (read-string "Compile command: " compile-command))
    (compile compile-command)))

(provide 'custom-compile)
