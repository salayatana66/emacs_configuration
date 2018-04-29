(require 'package) 
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Java Ide
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)

(require 'eclimd)
(setq eclim-executable "/home/aschioppa/eclipse/plugins/org.eclim_2.7.2/bin/eclim"
      eclim-eclipse-dirs "/home/aschioppa/eclipse"
      eclimd-wait-for-process nil
      eclimd-default-workspace "/home/aschioppa/workspace")
