;;; config.el --- Christopher Stingl's Layer config File for Spacemacs
;;
;; Copyright (c) 2019 Christopher Stingl 
;;
;; Author: Christopher Stingl <cjstingl@gmail.com>
;; URL: https://github.com/wolves/spacemacs-config-layer
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3
(setq-default line-spacing 8)
(setq-default indent-tabs-mode nil
              tab-width 2
              require-final-newline t
              next-line-add-newlines t)

(setq js-indent-level tab-width)
(setq typescript-indent-level tab-width)
(setq css-indent-offset tab-width)
(setq web-mode-style-padding tab-width
      web-mode-script-padding tab-width
      web-mode-css-indent-offset tab-width
      web-mode-markup-indent-offset tab-width
      web-mode-attr-indent-offset tab-width
      web-mode-code-indent-offset tab-width
      web-mode-enable-auto-indentation nil)

;; Do not wrap lines
;; https://www.emacswiki.org/emacs/TruncateLines
(set-default 'truncate-lines t)

