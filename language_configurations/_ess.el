;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ESS IDE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'ess-mode-hook
	  (lambda ()
	    (ess-set-style 'C++ 'quiet)
	    ;; Because
	    ;;                                 DEF GNU BSD K&R C++
	    ;; ess-indent-level                  2   2   8   5   4
	    ;; ess-continued-statement-offset    2   2   8   5   4
	    ;; ess-brace-offset                  0   0  -8  -5  -4
	    ;; ess-arg-function-offset           2   4   0   0   0
	    ;; ess-expression-offset             4   2   8   5   4
	    ;; ess-else-offset                   0   0   0   0   0
	    ;; ess-close-brace-offset            0   0   0   0   0
	    (add-hook 'local-write-file-hooks
		      (lambda ()
			(ess-nuke-trailing-whitespace)))))
;; (setq ess-nuke-trailing-whitespace-p 'ask)
;; or even
(setq ess-nuke-trailing-whitespace-p t)
(provide '_ess)
