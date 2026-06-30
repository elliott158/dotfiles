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

(setq inhibit-splash-screen t)

(blink-cursor-mode -1)

(pixel-scroll-precision-mode)

(setq use-package-always-ensure t)

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(use-package vertico
  :ensure t
  :init
  (vertico-mode))

(use-package which-key
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
  :bind (("C-x b" . consult-buffer)
	 ("C-s"   . consult-line)
	 ("C-S-s" . isearch-forward)))

(use-package hl-line
  :ensure nil
  :config
  (global-hl-line-mode))

(use-package ef-themes
  :config
  (load-theme 'ef-autumn :no-confirm))

(use-package vundo
  :config
  (setq vundo-glyph-alist vundo-unicode-symbols))

(use-package wakatime-mode
  :ensure t
  :config
  (global-wakatime-mode))
