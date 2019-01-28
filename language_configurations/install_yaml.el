(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(defvar yaml-packages
  '(yaml-mode))
  

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

(dolist (p yaml-packages)
  (when (not (package-installed-p p))
(package-install p)))
