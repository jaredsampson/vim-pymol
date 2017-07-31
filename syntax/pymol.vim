if exists("b:current_syntax")
    finish
endif

" Allow '.' character in keywords
setlocal iskeyword+=.

" Single-word selectors
syntax keyword pymolSelector all none
syntax keyword pymolSelector hydro h. hetatm het. donors don. acceptors acc.
syntax keyword pymolSelector polymer pol. backbone bb. sidechain guide
syntax keyword pymolSelector organic org. inorganic ino. solvent sol. metals
syntax keyword pymolSelector vis[ible] v. enabled present center origin
syntax keyword pymolSelector masked msk. protected pr.
syntax keyword pymolSelector bonded fixed fxd. restrained rst.

" Selection operators
syntax match   pymolSelectionOperator "[!&|+-]"
syntax keyword pymolSelectionOperator not and or in of
syntax keyword pymolSelectionOperator like l. gap around a. expand x. within w.
syntax keyword pymolSelectionOperator near_to nto. beyond be.
syntax keyword pymolSelectionOperator byres br. bymolecule bm. byfragment bf.
syntax keyword pymolSelectionOperator bysegment bs. byobject bo. bycell byring
syntax keyword pymolSelectionOperator neighbor nbr. bound_to bto. extend xt.
syntax keyword pymolSelectionOperator pepseq ps. rep


" Syntax highlighting
highlight link pymolSelector Type
highlight link pymolSelectionOperator Operator

let b:current_syntax = "pymol"
