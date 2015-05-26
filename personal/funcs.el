(defadvice find-tag (before c-tag-file activate)
  "Automatically create tags file."
  (let ((tag-file (concat default-directory "TAGS")))
    (unless (file-exists-p tag-file)
      (shell-command "ctags -e -a --Ruby-kinds=-fF -o TAGS -R"))
    (visit-tags-table tag-file)))

(defun seeing-is-believing ()
  "Replace the current region (or the whole buffer, if none) with the output of seeing_is_believing."
  (interactive)
  (let ((beg (if (region-active-p) (region-beginning) (point-min)))
  (end (if (region-active-p) (region-end) (point-max)))
  (origin (point)))
    (shell-command-on-region beg end "seeing_is_believing" nil 'replace)
    (goto-char origin)))
