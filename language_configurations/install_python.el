(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(shell-command "pip install --user jedi flake8 autopep8 yapf")

(defvar scala-packages
  '(elpy
    flycheck
    py-autopep8))

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

(dolist (p scala-packages)
  (when (not (package-installed-p p))
(package-install p)))
