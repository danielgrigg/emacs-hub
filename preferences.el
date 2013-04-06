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

;; GUI
(scroll-bar-mode 0)
(tool-bar-mode 0)
(setq inhibit-startup-message t) ;; No splash screen
(setq initial-scratch-message nil) ;; No scratch message


;; Create backup files in .emacs-backup instead of everywhere
(defvar user-temporary-file-directory "~/.emacs-backup")

; key bindings
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-'") 'linum-mode)
;;(global-set-key (kbd "C-c o") 'occur)

(autoload 'ghc-init "ghc" nil t)
    (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
;; when using flymake!
;;(add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))


;; Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/zenburn-emacs")
(add-to-list 'custom-theme-load-path "~/.emacs.d/bundle/solarized-emacs")
;;(load-theme 'zenburn 1)
;;
;; Annoying warnings
(defadvice save-buffers-kill-emacs (around no-query-kill-emacs activate)
  "Prevent annoying \"Active processes exist\" query when you quit Emacs."
  (flet ((process-list ())) ad-do-it))

;; highlight-symbol.el
(load-file "~/.emacs.d/bundle/highlight-symbol.el/highlight-symbol.el")
(global-set-key (kbd "C-,") 'highlight-symbol-at-point)
;;(global-set-key [(control f3)] 'highlight-symbol-at-point)
;;(global-set-key [f3] 'highlight-symbol-next)
;;(global-set-key [(shift f3)] 'highlight-symbol-prev)
;;(global-set-key [(meta f3)] 'highlight-symbol-prev)))
;;(global-set-key [(control meta f3)] 'highlight-symbol-query-replace)
