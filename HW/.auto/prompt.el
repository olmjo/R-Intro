(TeX-add-style-hook "prompt"
 (lambda ()
    (TeX-add-symbols
     '("blurb" 1)
     '("myMargin" 1)
     "margin")
    (TeX-run-style-hooks
     "listings"
     "hypcap"
     "all"
     "hyperref"
     "subfigure"
     "fontenc"
     "T1"
     "xcolor"
     "table"
     "lscape"
     "pdflscape"
     "textcomp"
     "natbib"
     "geometry"
     "setspace"
     "fancyhdr"
     "ltablex"
     "fancybox"
     "enumerate"
     "amsfonts"
     "amsthm"
     "amssymb"
     "amsmath"
     "graphicx"
     "debugshow"
     "final"
     "latex2e"
     "art10"
     "article"
     "10pt"
     "letterpaper")))

