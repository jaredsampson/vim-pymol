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


" Syntax highlighting
highlight link pymolSelector Type

let b:current_syntax = "pymol"
