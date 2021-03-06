(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(defvar scala-packages
  '(scala-mode
    ensime))

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

(dolist (p scala-packages)
  (when (not (package-installed-p p))
(package-install p)))
