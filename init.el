;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; close bee bee
(setq visible-bell 0)

;; about pair paren
(show-paren-mode)
(electric-pair-mode t)

(scroll-bar-mode -1)

(tool-bar-mode -1)

(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\C-r" 'recentf-open-files)

(setq initial-frame-alist (quote((fullscreen . maximized))))

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files


;; set file to auto refresh when change detected (For example, changed by other)
(global-auto-revert-mode 1)

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   ;;'("melpa" . "http://melpa.milkbox.net/packages/")
   '("melpa" . "http://elpa.emacs-china.org/melpa/")
   t))

(global-company-mode)
(global-linum-mode)

;;(setq lsp-java-java-path "D:\\Program Files\\Java\\jdk11\\bin\\java.exe")

(require 'lsp-mode)
(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

;; trigger treemacs
(global-set-key (kbd "C-1") 'treemacs)
;; lsp-go-imp
(global-set-key (kbd "C-2") 'lsp-goto-implementation)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-mode treemacs lsp-java flycheck company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
