(setq my/packages
      '(
        auto-complete
        color-moccur
        color-theme-solarized
        deferred
        elscreen
        emmet-mode
        expand-region
        evil
        evil-numbers
        evil-tabs
        flymake
        helm
        helm-c-moccur
        init-loader
        jaunte
        magit
        popwin
        powerline
        quickrun
        surround
        undo-tree
        yasnippet
        ))

(unless package-archive-contents
  (package-refresh-contents))

(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))
