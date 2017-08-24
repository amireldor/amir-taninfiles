(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; navigation
(global-set-key (kbd "C-,") 'previous-buffer)
(global-set-key (kbd "C-.") 'next-buffer)

(use-package better-defaults)

(use-package expand-region
  :config
  (global-set-key (kbd "C-=") 'er/expand-region))

(use-package parinfer)

(use-package undo-tree
  :config
  (global-undo-tree-mode))

(use-package auto-complete-mode)

(use-package smex
  :config (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "C-M-x") 'smex-major-mode-commands)
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))


(setq initial-scratch-message ";; scratch\n\n")
