(TeX-add-style-hook "._region_"
 (lambda ()
    (TeX-add-symbols
     '("tsl" 0)
     '("R" 0)
     '("blurb" 1)
     '("myMargin" 1)
     "margin")
    (TeX-run-style-hooks
     "listings"
     "hypcap"
     "all"
     "cclicenses"
     "hyperref"
     "subfigure"
     "fontenc"
     "T1"
     "xcolor"
     "table"
     "lscape"
     "pdflscape"
     "textcomp"
     "multicol"
     "rotating"
     "natbib"
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

