(deftheme Parchment
  "Parchment theme")

(let ((c-bg "#f1ede6")
      (c-fg "#000000")
      (c-cursor "#4a453f")

      (c-bg-0 "#ffffff")
      (c-bg-1 "#f1ede6")
      (c-bg-2 "#ede7de")
      (c-bg-3 "#e3dcce")
      (c-bg-4 "#e3dcce")
      (c-bg-5 "#c8c6be")
      (c-bg-6 "#d0d0d0")

      (c-fg-0 "#000000")
      (c-fg-3 "#232525")
      (c-fg-5 "#404040")
      (c-fg-10 "#707070")
      (c-fg-11 "#808284")
      (c-fg-15 "#a0a0a0")

      (c-red--1 "#c61306")
      (c-red-0 "#e41507")
      (c-red-1 "#e5786d")
      (c-red-2 "#cd0000")
      (c-red-3 "#ff0000")
      (c-green-0 "#255d0b")
      (c-green-1 "#329033")
      (c-green-2 "#32ff30")
      (c-blue-0 "#053875")
      (c-blue-1 "#2981ca")
      (c-blue-3 "#8ac6f2")
      (c-purple-0 "#401078")
      (c-purple-1 "#977dab")

      (c-pop-bg "#e6dfef")
      (c-pop-fg "#777577")
      (c-pop-sel-bg "#dad0df")
      (c-pop-common-fg "#000000")

      (c-ansi-black "#000000")
      (c-ansi-red "#e41507")
      (c-ansi-green "#329033")
      (c-ansi-yellow "#ffcc00")
      (c-ansi-blue "#2981ca")
      (c-ansi-magenta "#977dab")
      (c-ansi-cyan "#8ac6f2")
      (c-ansi-white "#f0f0f0")
      )
  (custom-theme-set-faces
   'Parchment
   `(default ((t (:background ,c-bg :foreground ,c-fg))))
   '(italic ((t (:slant italic))))
   '(bold ((t (:weight bold))))
   '(bold-italic ((t (:inherit (bold) :slant italic))))
   '(variable-pitch ((t nil)))
   '(fixed-pitch ((t nil)))
   '(fixed-pitch-serif ((t nil)))

   `(cursor ((t (:background ,c-cursor))))
   '(fringe ((t (:inherit (default)))))
   `(region ((t (:background ,c-bg-4))))
   `(secondary-selection ((t (:background ,c-bg-6))))
   '(isearch ((t (:inverse-video t))))
   `(lazy-highlight ((t (:background ,c-bg-5))))
   '(show-paren-match ((t (:weight bold))))
   `(show-paren-mismatch ((t (:background ,c-red-1 :foreground ,c-bg-0))))
   `(line-number ((t (:background ,c-bg-1 :foreground ,c-fg-15))))
   `(line-number-current-line ((t (:background ,c-bg-1 :foreground ,c-fg-10))))
   `(linum ((t (:inherit (default) :background ,c-bg-1 :foreground ,c-fg-15))))

   `(mode-line ((t (:background ,c-bg-3))))
   `(mode-line-2 ((t (:inherit mode-line :background ,c-bg-2))))
   `(mode-line-3 ((t (:inherit mode-line :background ,c-bg-1))))
   `(mode-line-inactive ((t (:inherit (mode-line) :foreground ,c-fg-15))))
   '(mode-line-highlight ((t (:inverse-video t))))
   '(mode-line-buffer-id ((t (:inherit (mode-line bold)))))
   `(minibuffer-prompt ((t (:foreground ,c-red--1))))

   `(escape-glyph ((t (:foreground ,c-blue-1))))
   `(font-lock-builtin-face ((t (:foreground ,c-fg-0 :inherit (bold)))))
   `(font-lock-comment-face ((t (:foreground ,c-green-1))))
   `(font-lock-constant-face ((t (:foreground ,c-blue-1))))
   `(font-lock-function-name-face ((t (:foreground ,c-fg-0 :inherit (bold-italic)))))
   `(font-lock-keyword-face ((t (:foreground ,c-fg-0 :inherit (bold)))))
   `(font-lock-operator-face ((t (:foreground ,c-red-0))))
   `(font-lock-parameter-face ((t (:inherit (italic)))))
   `(font-lock-preprocessor-face ((t (:foreground ,c-red-0 :inherit (bold)))))
   `(font-lock-string-face ((t (:foreground ,c-green-0))))
   `(font-lock-type-face ((t (:foreground ,c-blue-1 :inherit (bold)))))
   `(font-lock-variable-name-face ((t (:foreground ,c-fg-0 :inherit (italic)))))
   `(font-lock-warning-face ((t (:foreground ,c-red-0 :underline t))))

   `(success ((t (:foreground ,c-green-2))))
   `(warning ((t (:background ,c-red-3))))
   `(error ((t (:foreground ,c-red-3 :inherit (bold) :underline t))))

   '(header-line ((t (:background "#e0e0e0" :overline "#b0b0b0" :underline "#b0b0b0"))))
   `(centaur-tabs-default ((t (:background "#e0e0e0" :foreground ,c-fg-0 :overline "#b0b0b0"))))
   `(centaur-tabs-selected ((t (:inherit 'centaur-tabs-default :background ,c-bg-1 :foreground ,c-fg-3 :underline nil))))
   `(centaur-tabs-unselected ((t (:inherit 'centaur-tabs-default :foreground ,c-fg-5 :underline "#b0b0b0"))))
   `(centaur-tabs-selected-modified ((t (:inherit 'centaur-tabs-selected))))
   `(centaur-tabs-unselected-modified ((t (:inherit 'centaur-tabs-unselected))))
   `(centaur-tabs-active-bar-face ((t (:inherit 'centaur-tabs-default))))
   `(centaur-tabs-modified-marker-selected ((t (:inherit 'centaur-tabs-selected :foreground ,c-blue-1))))
   `(centaur-tabs-modified-marker-uselected ((t (:inherit 'centaur-tabs-unselected :foreground ,c-blue-1))))

   `(term-color-black ((t (:foreground ,c-ansi-black :background ,c-ansi-black))))
   `(term-color-red ((t (:foreground ,c-ansi-red :background ,c-ansi-red))))
   `(term-color-green ((t (:foreground ,c-ansi-green :background ,c-ansi-green))))
   `(term-color-yellow ((t (:foreground ,c-ansi-yellow :background ,c-ansi-yellow))))
   `(term-color-blue ((t (:foreground ,c-ansi-blue :background ,c-ansi-blue))))
   `(term-color-magenta ((t (:foreground ,c-ansi-magenta :background ,c-ansi-magenta))))
   `(term-color-cyan ((t (:foreground ,c-ansi-cyan :background ,c-ansi-cyan))))
   `(term-color-white ((t (:foreground ,c-ansi-white :background ,c-ansi-white))))

   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))

   '(tuareg-font-lock-governing-face ((t (:inherit (font-lock-builtin-face)))))
   '(tuareg-font-lock-multistage-face ((t (:inherit (font-lock-builtin-face)))))
   '(tuareg-font-lock-operator-face ((t (:inherit (font-lock-operator-face)))))
   '(tuareg-font-lock-error-face ((t (:inherit (error)))))
   `(tuareg-font-lock-interactive-output-face ((t (:foreground ,c-purple-0))))
   '(tuareg-font-lock-interactive-error-face ((t (:inherit (error)))))

   `(racket-check-syntax-def-face ((t (:background "SeaGreen1" :foreground ,c-fg-3 :inherit (bold)))))
   `(racket-check-syntax-use-face ((t (:background "PaleGreen1" :foreground ,c-fg-3 :inherit (bold-italic)))))
   '(racket-here-string-face ((t (:inherit (sh-heredoc-face)))))
   '(racket-keyword-argument-face ((t (:foreground "IndianRed" :inherit (bold)))))
   '(racket-logger-config-face ((t (:inherit (italic font-lock-comment-face)))))
   '(racket-logger-debug-face ((t (:inherit (font-lock-constant-face)))))
   '(racket-logger-error-face ((t (:inherit (error)))))
   '(racket-logger-fatal-face ((t (:inherit (bold) :inherit (error)))))
   '(racket-logger-info-face ((t (:inherit (font-lock-string-face)))))
   '(racket-logger-topic-face ((t (:inherit (italic font-lock-function-name-face)))))
   '(racket-logger-warning-face ((t (:inherit (warning)))))
   '(racket-selfeval-face ((t (:inherit (font-lock-string-face)))))

   '(sh-escaped-newline ((t (:inherit (font-lock-string-face)))))
   '(sh-heredoc ((t (:foreground "IndianRed" :inherit (bold)))))
   '(sh-quoted-exec ((t (:foreground "salmon"))))

   '(vhdl-font-lock-attribute-face ((t (:foreground "IndianRed"))))
   '(vhdl-font-lock-directive-face ((t (:foreground "CadetBlue"))))
   `(vhdl-font-lock-enumvalue-face ((t (:foreground ,c-blue-3))))
   '(vhdl-font-lock-function-face ((t (:inherit (font-lock-function-name-face)))))
   `(vhdl-font-lock-generic-/constant-face ((t (:foreground ,c-blue-3))))
   `(vhdl-font-lock-prompt-face ((t (:foreground ,c-fg-11))))
   '(vhdl-font-lock-reserved-words-face ((t (:inherit (font-lock-builtin-face)))))
   '(vhdl-font-lock-translate-off-face ((t (:background "DimGray")) (t nil)))
   '(vhdl-font-lock-type-face ((t (:inherit (font-lock-type-face)))))
   '(vhdl-font-lock-variable-face ((t (:inherit (font-lock-variable-name-face)))))

   '(font-latex-sectioning-0-face ((t (:inherit font-latex-sectioning-1-face))))
   `(font-latex-bold-face ((t (:inherit bold :foreground ,c-purple-0))))
   '(font-latex-doctex-documentation-face ((t nil)))
   '(font-latex-doctex-preprocessor-face ((t (:inherit (font-latex-doctex-documentation-face font-lock-builtin-face font-lock-preprocessor-face)))))
   `(font-latex-italic-face ((t (:inherit italic :foreground ,c-purple-0))))
   `(font-latex-math-face ((t (:foreground ,c-blue-0))))
   `(font-latex-script-char-face ((t (:foreground ,c-purple-0))))
   '(font-latex-sectioning-1-face ((t (:inherit font-latex-sectioning-2-face))))
   '(font-latex-sectioning-2-face ((t (:inherit font-latex-sectioning-3-face))))
   '(font-latex-sectioning-3-face ((t (:inherit font-latex-sectioning-4-face))))
   '(font-latex-sectioning-4-face ((t (:inherit font-latex-sectioning-5-face))))
   '(font-latex-sectioning-5-face ((t (:inherit (font-lock-function-name-face)))))
   '(font-latex-sedate-face ((t (:inherit (font-lock-string-face)))))
   '(font-latex-slide-title-face ((t (:inherit (variable-pitch font-lock-type-face) :inherit (bold)))))
   '(font-latex-string-face ((t (:inherit (font-lock-string-face)))))
   `(font-latex-subscript-face ((t (:foreground ,c-purple-1 :height 0.7))))
   `(font-latex-superscript-face ((t (:foreground ,c-purple-1 :height 0.7))))
   '(font-latex-verbatim-face ((t (:foreground "DimGray"))))
   `(font-latex-warning-face ((t (:inherit (bold) :foreground ,c-red-2))))

   `(company-tooltip ((t (:inherit default :foreground ,c-pop-fg :background ,c-pop-bg))))
   `(company-scrollbar-bg ((t (:background ,c-pop-sel-bg))))
   `(company-scrollbar-fg ((t (:background ,c-pop-bg))))
   `(company-tooltip-selection ((t (:weight bold :background ,c-pop-sel-bg))))
   `(company-tooltip-common ((t (:foreground ,c-pop-common-fg)))))
  (setq-default ansi-color-names-vector
                [term term-color-black term-color-red term-color-green
                      term-color-yellow term-color-blue term-color-magenta
                      term-color-cyan term-color-white])
  t)

(provide-theme 'Parchment)
