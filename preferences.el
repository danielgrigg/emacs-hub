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

