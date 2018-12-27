;; _python.el -- custom python configuration

;;; Commentary:

;; Author: Kyle W. Purdon (kpurdon)
;;
;; This file is not part of GNU Emacs.

;;; Code:

(elpy-enable)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'py-autopep8)
(setq py-autopep8-options '("--ignore=E501,W293,W391,W690"))
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(define-key global-map (kbd "RET") 'newline-and-indent)

(provide '_python)

;;; _python.el ends here
