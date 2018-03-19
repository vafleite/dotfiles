;;; prot-general-settings.el --- init module with my general settings

;;; Commentary:
;; contains general settings for Emacs
;; this file is called from init.el

;;; Code:
;;;; user interface

;; theme
;; TODO port tempus themes
;; https://github.com/protesilaos/tempus-themes
(load-theme 'deeper-blue)

;; disable gtk ui components
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; answering with 'y' or 'n' instead of 'yes/no'
(defalias 'yes-or-no-p 'y-or-n-p)

;;;; helpers

;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

;; turn on bracket match highlight
(show-paren-mode 1)

;; when a file is updated outside emacs, make it update if it's already opened in emacs
(global-auto-revert-mode 1)

;; wrap long lines by word boundary, and arrow up/down move by visual line, etc
(global-visual-line-mode 1)

;; single space defines the end of a sentence
(setq sentence-end-double-space nil )

;; ignore irregular casing for words
(global-subword-mode 1)

;; show active region
(transient-mark-mode 1)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(setq-default transient-mark-mode t)

;; delete region when inserting text
(delete-selection-mode 1)

(provide 'prot-general-settings)
;;; prot-general-settings.el ends here
