(defun seeing-is-believing ()
  "Replace the current region (or the whole buffer, if none) with the output of seeing_is_believing."
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (point-min)))
  (end (if (region-active-p) (region-end) (point-max)))
  (origin (point)))
    (shell-command-on-region beg end "seeing_is_believing" nil 'replace)
    (goto-char origin)))

(global-set-key "\M-." 'helm-etags-select)

(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
