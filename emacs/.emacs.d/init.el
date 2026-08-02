(setq custom-file "~/.emacs.d/emacs-custom.el")
(if (file-exists-p custom-file) (load custom-file)
  (write-region " " nil custom-file))

(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq explicit-shell-file-name "/bin/bash")

(menu-bar-mode -1)

(when (display-graphic-p)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (horizontal-scroll-bar-mode -1))

(setq inhibit-splash-screen t)

(blink-cursor-mode -1)

(pixel-scroll-precision-mode)

(global-set-key [C-mouse-4] 'text-scale-increase)
(global-set-key [C-mouse-5] 'text-scale-decrease)


(setq use-package-always-ensure t)

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(defun a-term ()
  (interactive)
  (ansi-term (getenv "SHELL")))

(global-set-key (kbd "C-c t") 'a-term)

(use-package vertico
  
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

(use-package vundo
  :config
  (setq vundo-glyph-alist vundo-unicode-symbols))

(use-package ef-themes
  :config
  (modus-themes-load-theme 'ef-summer))

(use-package wakatime-mode
  :config
  (global-wakatime-mode 1))

(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))
