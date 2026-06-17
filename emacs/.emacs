(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(setq explicit-shell-file-name "/bin/bash")

(global-display-line-numbers-mode t)

;;turn off syntax highlighting
(global-font-lock-mode 0)
(menu-bar-mode -1)

(when (display-graphic-p)
	(tool-bar-mode -1)
	(scroll-bar-mode -1)
	(horizontal-scroll-bar-mode -1))

;; The initial splash screen is so oldish...
;; Eventually, you will replace it with a fancy dashboard
(setq inhibit-splash-screen t)

;; -1 for non-blinking cursor; t for blinking
(blink-cursor-mode -1)


;; For smooth scrolling
(pixel-scroll-precision-mode)

;; Set the main font
(set-frame-font "Monaco 14" nil t)  ; choose your poison

;;slime-mode
(setq inferior-lisp-program "sbcl")

(require 'package)
(package-initialize)

;;basic editor things

(use-package vertico
  :ensure t
  :config
  (vertico-mode))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package windmove
  :ensure nil
  :bind
  (("S-<up>". 'windmove-up)
   ("S-<down>". 'windmove-down)
   ("S-<left>". 'windmove-left)
   ("S-<right>". 'windmove-right)))

(use-package consult
  :ensure t
  :bind (("C-x b" . consult-buffer)
	 ("C-s"   . consult-line)
	 ("C-S-s" . isearch-forward)))

(use-package hl-line
  :ensure nil   ;; it's built-in
  :config
  (global-hl-line-mode))  ;; this enables it everywhere

;; ef-themes is a package containing nice Emacs themes by Prot
(use-package ef-themes
  :config
  (load-theme 'ef-autumn :no-confirm))

(use-package vundo
  :config
  (setq vundo-glyph-alist vundo-unicode-symbols))

;;language specifics
