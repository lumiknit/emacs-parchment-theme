# Parchment Theme for Emacs

Emacs color theme based on the Haskell sample in [PragmataPro page](https://www.fsd.it/shop/fonts/pragmatapro/).

## Usage

Put `Parchment-theme.el` in your `.emacs.d` and add `(load-theme 'Parchemnt)` in your `.emacs` or `init.el`.

To get red-colored punctuations/operators, add below in your `init.el`:
```el
;; Define font-lock-operator-face
(unless (boundp 'font-lock-operator-face)
  (defface font-lock-operator-face
    '((t (:inherit default)))
    "Basic face for operator"
    :group 'basic-faces)
  (setq-default font-lock-operator-face 'font-lock-operator-face))
;; Add patterns for font-lock-operator-face
(let ((punc-list
         '((c-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (c++-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (java-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (rust-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (python-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (ruby-mode "[][(){},.;^~!&*+=|<>/-]+")
           (perl-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (lua-mode "[][(){},.;:^~!&*+=|<>/?#-]+")
           (js-mode "[][(){},.;:^~!&*+=|<>/?-]+")
           (emacs-lisp-mode "[][(){}]+\\|\\B[,.^~!&*+=|<>/?'`-]+\\B")
           (lisp-interaction-mode "[][(){}]+\\|\\B[,.^~!&*+=|<>/?'`-]+\\B")
           (lisp-mode "[][(){}]+\\|\\B[,.^~!&*+=|<>/?'`-]+\\B")
           (scheme-mode "[][(){}]+\\|\\B[:,.^~!&*+=|<>/?'`-]+\\B")
           (racket-mode "[][(){}]+\\|\\B[:,.^~!&*+=|<>/?'`-]+\\B")
           (haskell-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           (literate-haskell-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           (elixir-mode "[][(){}:,.@^~!&*+=|<>/?'`-]+")
           (tuareg-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           (coq-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           (coq-response-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           (coq-goals-mode "[][(){}:;,.^~!#$@&*+=|<>/?\\-]+")
           )))
    (dolist (i punc-list)
      (font-lock-add-keywords
       (car i)
       `((,(cadr i) 0 'font-lock-operator-face)))))
```

For each element of `punc-list`, the first entry is a major mode name and the second one is a punctuation/operator pattern.

