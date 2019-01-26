;; to install
;; (add-to-list 'load-path ".")
;; (load "install_markdown")


(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(package-refresh-contents)

(defvar markdown-packages
  '(markdown-mode
    ))

(when (not package-archive-contents)
    (package-refresh-contents))
(package-initialize)

(dolist (p markdown-packages)
  (when (not (package-installed-p p))
(package-install p)))

