(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tsdh-dark))
 '(package-selected-packages '(auctex smartparens slime paredit rust-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;general config
(global-visual-line-mode 1)
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;smartparens config
(require 'smartparens)
(smartparens-global-mode t)

;;lsp mode config
(require 'lsp-mode)
(add-hook 'rust-mode-hook 'lsp)
(setq lsp-eldoc-render-all t)

;;ac config
(require 'auto-complete)
(ac-config-default)
(global-auto-complete-mode t)
(add-to-list 'ac-modes 'rust-mode)
(add-to-list 'ac-modes 'latex-mode)

;;Latex config
(require 'auctex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq TeX-PDF-mode t)
(setq-default TeX-master t)
(load "auctex.el" nil t t)
(add-hook 'latex-mode-hook 'auto-fill-mode)
(add-hook 'latex-mode-hook 'LaTeX-math-mode)
;;(add-hook 'latex-mode-hook 'lsp)

;;Rust config
;;(require 'rust-mode)

;;ac-latex config
(require 'auto-complete-auctex)

(package-initialize)
(dolist (hook '(text-mode-hook))
(add-hook hook (lambda () (flyspell-mode))))
