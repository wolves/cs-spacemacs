;;; packages.el --- cs-spacemacs layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Christopher Stingl <cjstingl@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `cs-spacemacs-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `cs-spacemacs/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `cs-spacemacs/pre-init-PACKAGE' and/or
;;   `cs-spacemacs/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst cs-spacemacs-packages
  '(
    ace-window
    all-the-icons
    aggressive-indent
    avy
    crux
    key-chord
    magit-gh-pulls
    neotree
    prettier-js
    projectile-ripgrep
    ))

(defun cs-spacemacs/post-init-ace-window ()
  (use-package ace-window
    :ensure t
    :config
    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
    (setq aw-dispatch-always t)))

(defun cs-spacemacs/init-all-the-icons ()
  (use-package all-the-icons
    :ensure t))

(defun cs-spacemacs/post-init-aggressive-indent()
  (use-package aggressive-indent
    :ensure t
    :config
    (global-aggressive-indent-mode 1)))

(defun cs-spacemacs/post-init-avy ()
  (use-package avy
    :ensure t))

(defun cs-spacemacs/init-crux ()
  (use-package crux
    :ensure t))

(defun cs-spacemacs/init-key-chord ()
    (use-package key-chord
      :ensure t
      :config
      (setq key-chord-two-keys-delay 0.1)
      (key-chord-mode +1)))

(defun cs-spacemacs/post-init-magit-gh-pulls ()
  (use-package magit-gh-pulls
    :ensure t
    :config
    (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)))

(defun cs-spacemacs/post-init-neotree ()
  (use-package neotree
    :ensure t
    :config
    (setq neo-theme
          (if (display-graphic-p) 'icons 'arrow)
          neo-smart-open t
          neo-window-width 30)
    (custom-set-faces
     '(neo-dir-link-face ((t (:slant italic :family "Operator Mono" :height 120))))
     '(neo-file-link-face ((t (:height 120)))))))

(defun cs-spacemacs/post-init-prettier-js ()
  (use-package prettier-js
    :ensure t
    :config
    (setq-default prettier-js-args '(
                                     "--trailing-comma" "es5"
                                     "--single-quote" "true"
                                     "--semi" "false"
                                     "--print-width" "100"
                                     ))))

(defun cs-spacemacs/init-projectile-ripgrep ()
  (use-package projectile-ripgrep
    :ensure t))

;;; packages.el ends here
