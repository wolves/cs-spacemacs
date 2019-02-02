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

(defun cs-switch-to-previous-buffer ()
  "Switch to previously open buffer.  Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun cs-toggle-neotree ()
  "Toggle neotree."
  (interactive)
  (neotree-toggle)
  (windmove-left))

(defun shift-left (&optional arg)
  "Shift the line or region to the ARG places to the left."
  (interactive)
  (shift-right (* -1 (or arg 1))))

(defun shift-right (&optional arg)
  "Shift the line or region to the ARG places to the right.  A place is considered `tab-width' character columns."
  (interactive)
  (let ((deactivate-mark nil)
        (beg (or (and mark-active (region-beginning))
                 (line-beginning-position)))
        (end (or (and mark-active (region-end)) (line-end-position))))
    (indent-rigidly beg end (* (or arg 1) tab-width))))

(defun cs-split-horizontal ()
  "Split the window horizontally below."
  (interactive)
  (split-window-below)
  (windmove-down))

(defun cs-split-vertical ()
  "Split the window vertically below."
  (interactive)
  (split-window-right)
  (windmove-right))

(defun format-code ()
  "Format the current buffer according to file extension."
  (interactive)
  (let ((ext (file-name-extension (buffer-name))))
    (cond ((string= ext "js") (prettier-js))
          ((string= ext "jsx") (prettier-js))
          ((string= ext "css") (prettier-js))
          ((string= ext "scss") (prettier-js))
          ((string= ext "md") (prettier-js))
          ((string= ext "gql") (prettier-js))
          ((string= ext "re") (refmt))
          ((string= ext "ts") (tide-format))
          ((string= ext "json") (json-mode-beautify))
          ((string= (buffer-name) ".babelrc") (json-mode-beautify))
          (t (message "No formatter for %s" ext))
          )))
