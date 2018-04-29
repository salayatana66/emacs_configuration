(require 'package) 
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C/C++ Ide
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'req-package)
(req-package company
	     :config
	     (progn
	       (add-hook 'after-init-hook 'global-company-mode)
	       (global-set-key (kbd "M-/") 'company-complete-common-or-cycle)
	           (setq company-idle-delay 0)))

(req-package flycheck
  :config
  (progn
    (global-flycheck-mode)))

;; configs for  GGTAGS
;; add default reference directories
(setenv "GTAGSLIBPATH" (concat "/opt/conda/lib/python3.5/site-packages/tensorflow/include"
			       ":"
			       "/usr/include"
			       ":"
			       "/mnt/notebooks/tensorflow/tensorflow"
			       ":"
			       (file-truename "~/persistent-disk/aschioppa_tf_layers")))

(setenv "MAKEOBJDIRPREFIX" (file-truename "/mnt/notebooks/obj/"))
(setq company-backends '((company-dabbrev-code company-gtags)))

(add-hook 'c-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'ggtags-mode)

(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c++-mode-hook 'ggtags-mode)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; End C/C++ Ide
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



