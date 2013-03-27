;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

(require 'package)
(add-to-list 'package-archives 
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))

(package-initialize)
(setq inhibit-startup-message t) ;; No splash screen
(setq initial-scratch-message nil) ;; No scratch message
(tool-bar-mode 0) ;; No toolbars

;; Create backup files in .emacs-backup instead of everywhere
(defvar user-temporary-file-directory "~/.emacs-backup")

; key bindings
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

(autoload 'ghc-init "ghc" nil t)
    (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;; when using flymake!
;;(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))

(add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/zenburn-emacs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/solarized-emacs")

;TODO - this should work but doesn't. Whilst the theme loads, the actual
;colours loaded don't match the theme. Our workaround is to scan
;the list of available mode hooks and load zenburn for each. By the 
;time the mode is selected, load-theme seems to work.

;(load-theme 'zenburn 1)
(load-file "~/.emacs.d/hooks.el")

