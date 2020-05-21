
;; typescript

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (eldoc-mode +1)
  (tide-hl-identifier)
  (company-mode +1))

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . rjsx-mode))
(add-hook 'js2-mode-hook #'setup-tide-mode)
(add-hook 'rjsx-mode-hook #'setup-tide-mode)

(add-hook! js2-mode 'prettier-js-mode
           (add-hook 'before-save-hook #'refmt-before-save nil t))
(add-hook! rjsx-mode 'prettier-js-mode
           (add-hook 'berofe-save-hook #'refmt-before-save nil t))

(setq company-tooltip-align-annotations t
      tide-format-options '(:indentSize 2 :tabSize 2)
      tide-completion-ignore-case t
      prettier-js-args '("--trailing-comma" "all"
                         "--single-quote" t
                         "--jsx-single-quote" t
                         "--arrow-parens" "avoid"))
