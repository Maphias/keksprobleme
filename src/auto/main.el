(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrbook" "oneside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("hyperref" "backref=false" "final=true" "pdfpagelabels") ("biblatex" "backend=biber" "style=numeric") ("todonotes" "disable")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "makros"
    "keks-1:random-walk"
    "scrbook"
    "scrbook10"
    "amsmath"
    "amsxtra"
    "fontspec"
    "xcolor"
    "amssymb"
    "hyperref"
    "tikz"
    "xspace"
    "nchairx"
    "gitinfo2"
    "biblatex"
    "faktor"
    "todonotes"
    "fancyhdr")
   (TeX-add-symbols
    '("bibnote" 2)
    "chairxauthorbibfont"
    "chairxtitlebibfont"
    "chairxseriesbibfont"
    "chairxvolumebibfont")
   (LaTeX-add-bibliographies
    "../bibliography/articles"
    "../bibliography/books"
    "/home/maphias/git/bib/dqbook"
    "/home/maphias/git/bib/dqarticle"
    "/home/maphias/git/bib/dqproceeding"
    "/home/maphias/git/bib/dqthesis"
    "/home/maphias/git/bib/preprints"
    "/home/maphias/git/bib/misc"
    "/home/maphias/git/bib/notes"
    "/home/maphias/git/bib/dqprocentry"
    "/home/maphias/git/bib/script"))
 :latex)

