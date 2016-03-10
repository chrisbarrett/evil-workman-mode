;;; evil-workman-mode.el --- Workman layout for evil-mode  -*- lexical-binding: t; -*-

;; Copyright (C) 2016 Chris Barrett

;; Author: Chris Barrett <chris.d.barrett@me.com>
;; Version: 0.1
;; Package-Requires: ((evil "1.2.11"))

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Workman layout for evil-mode. Enable by calling `evil-workman-mode'.

;;; Code:

(require 'evil)

(defvar evil-workman-mode-map
  (make-sparse-keymap))

(defun evil-workman-mode--swap-evil-keys (a b)
  (let ((x (lookup-key evil-motion-state-map a))
        (y (lookup-key evil-motion-state-map b)))
    (eval `(progn
             (evil-define-key 'normal evil-workman-mode-map (kbd ,a) #',y)
             (evil-define-key 'normal evil-workman-mode-map (kbd ,b) #',x)))))

;;;###autoload
(define-minor-mode evil-workman-mode
  "Enable keybindings that are more ergonomic for workman."
  :keymap evil-workman-mode-map
  :lighter " Workman"
  (evil-workman-mode--swap-evil-keys "o" "l")
  (evil-workman-mode--swap-evil-keys "O" "L")
  (evil-workman-mode--swap-evil-keys "j" "n")
  (evil-workman-mode--swap-evil-keys "J" "N")
  (evil-workman-mode--swap-evil-keys "k" "e")
  (evil-workman-mode--swap-evil-keys "K" "E")
  (evil-workman-mode--swap-evil-keys "K" "E")
  (evil-workman-mode--swap-evil-keys "h" "y")
  (evil-workman-mode--swap-evil-keys "H" "Y")
  (if evil-workman-mode
      (evil-define-key 'normal evil-workman-mode-map "E" nil)
    (evil-define-key 'normal evil-workman-mode-map "E" #'evil-forward-WORD-end)))

(provide 'evil-workman-mode)

;;; evil-workman-mode.el ends here
