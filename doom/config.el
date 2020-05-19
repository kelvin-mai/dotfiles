(setq user-full-name "Kelvin Mai"
      user-mail-address "kelvin.mai002@gmail.com")

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
(load! "+ui")

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . rjsx-mode))
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (eldoc-mode +1)
  (tide-hl-identifier)
  (company-mode +1))
(setq company-tooltip-align-annotations t)
(setq tide-completion-ignore-case t)
(add-hook 'js2-mode-hook #'setup-tide-mode)
(add-hook 'rjsx-mode-hook #'setup-tide-mode)
(setq tide-format-options '(:indentSize 2 :tabSize 2))
