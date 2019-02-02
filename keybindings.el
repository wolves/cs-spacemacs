;;; keybindings.el --- cs-spacemacs layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Christopher Stingl <cjstingl@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(global-set-key (kbd "s-\\") 'cs-toggle-neotree)
(global-set-key (kbd "s-\]") 'shift-right)
(global-set-key (kbd "s-\[") 'shift-left)
(global-set-key (kbd "C-x 2") 'cs-split-horizontal)
(global-set-key (kbd "C-x 3") 'cs-split-vertical)
(global-set-key (kbd "s-F") 'projectile-ripgrep)
(global-set-key (kbd "s-M-l") 'format-code)

;; Crux Keybinds
(global-set-key (kbd "C-c o") 'crux-open-with)
(global-set-key (kbd "C-c t") 'crux-visit-term-buffer)
(global-set-key (kbd "s-j") 'crux-top-join-line)
(global-set-key (kbd "C-x 4 t") 'crux-transpose-windows)
(global-set-key (kbd "C-k") 'crux-smart-kill-line)
(global-set-key (kbd "s-d") 'crux-duplicate-current-line-or-region)
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)

;; Keychords
(key-chord-define-global "jj" 'avy-goto-char-2)
(key-chord-define-global "JJ" 'cs-switch-to-previous-buffer)
(key-chord-define-global "jl" 'avy-goto-line)
;; (key-chord-define-global "jk" 'avy-goto-word)
(key-chord-define-global "jk" 'ace-window)
(key-chord-define-global "Dt" 'cs-org-archive-done-tasks)
(key-chord-unset-global "uu")
