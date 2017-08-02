" Vim syntax file¬
" Language:     PyMOL Script
" Maintainer:   Jared Sampson <jared.sampson@gmail.com>¬
" URL:          https://github.com/jaredsampson/vim-pymol¬
" Last Change:  2017-08-01
" Filenames:    *.pml¬
" Version:      0.1¬

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
syntax match   pymolSelectionOperator "[!&|]"
syntax keyword pymolSelectionOperator not and or in of
syntax keyword pymolSelectionOperator like l. gap around a. expand x. within w.
syntax keyword pymolSelectionOperator near_to nto. beyond be.
syntax keyword pymolSelectionOperator byres br. bymolecule bm. byfragment bf.
syntax keyword pymolSelectionOperator bysegment bs. byobject bo. bycell byring
syntax keyword pymolSelectionOperator neighbor nbr. bound_to bto. extend xt.
syntax keyword pymolSelectionOperator pepseq ps. rep

" Commands
syntax keyword pymolCommand abort alias align alter alter_state as attach
syntax keyword pymolCommand backward bg_color bond button
syntax keyword pymolCommand cache capture cd center centerofmass clip cls color
syntax keyword pymolCommand config_mouse copy count_atoms count_frames count_states
syntax keyword pymolCommand create cycle_valence
syntax keyword pymolCommand delete deprotect deselect disable dist[ance] draw dss
syntax keyword pymolCommand edit edit_keys enable ending extend
syntax keyword pymolCommand fab feedback fetch fit flag fork forward frag[ment]
syntax keyword pymolCommand frame full_screen fuse
syntax keyword pymolCommand get get_angle get_area get_chains get_color_indices
syntax keyword pymolCommand get_dihedral get_dist[ance] get_extent get_model
syntax keyword pymolCommand get_names get_names_of_type get_object_matrix
syntax keyword pymolCommand get_pdbstr get_position get_session get_symmetry
syntax keyword pymolCommand get_title get_type get_version get_view gradient group
syntax keyword pymolCommand h_add h_fill hide
syntax keyword pymolCommand id_atom identify index indicate
syntax keyword pymolCommand intra_fit intra_rms intra_rms_cur
syntax keyword pymolCommand invert isodot isolevel isomesh isosurface
syntax keyword pymolCommand iterate iterate_state
syntax keyword pymolCommand label load load_model load_traj ls
syntax keyword pymolCommand map_double map_new map_set map_set_border map_trim
syntax keyword pymolCommand mappend mclear mdo mdump mmatrix
syntax keyword pymolCommand mplay mpng mset mstop mview
syntax keyword pymolCommand mask matrix_copy matrix_reset mem meter_reset middle
syntax keyword pymolCommand morph move multisave
syntax keyword pymolCommand order orient origin
syntax keyword pymolCommand pair_fit png protect ps[eudoatom] push_undo pwd
syntax keyword pymolCommand quit
syntax keyword pymolCommand ramp_new ray read_molstr read_pdbstr rebuild recolor
syntax keyword pymolCommand redo refresh reinit[ialize] remove remove_picked rename
syntax keyword pymolCommand replace reset rewind rms rms_cur rock rotate run
syntax keyword pymolCommand save scene select set set_bond set_color set_colour
syntax keyword pymolCommand set_dihedral set_geometry set_key set_name set_symmetry
syntax keyword pymolCommand set_title set_view show show_as slice slice_new smooth
syntax keyword pymolCommand sort space splash split_states super symexp sync system
syntax keyword pymolCommand torsion translate turn
syntax keyword pymolCommand unbond undo unmask unpick unset unset_deep update
syntax keyword pymolCommand view viewport volume volume_color
syntax keyword pymolCommand window wizard
syntax keyword pymolCommand zoom

" Numbers
" Hex, Oct, Bin
syntax match pymolNumber "\<0[xX]\x\+\>" display
syntax match pymolNumber "\<0[oO]\o\+\>" display
syntax match pymolNumber "\<0[bB][01]\+\>" display
" Integer
syntax match pymolNumber "\<\d\>" display
syntax match pymolNumber "\<[1-9]\d\+\>" display
syntax match pymolNumber "\<\d\+[jJ]\>" display
" Float
syntax match pymolNumber "\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syntax match pymolNumber "\<\d\+[eE][+-]\=\d\+[jJ]\=\>" display
syntax match pymolNumber "\<\d\+\.\d*\%([eE][+-]\=\d\+\)\=[jJ]\=" display

" Strings
syntax match pymolString "\v\'[^']*\'"
syntax match pymolString '\v\"[^"]*\"'

" Comments
syntax match pymolComment "\v#.*$"

" Syntax highlighting
highlight link pymolSelector Type
highlight link pymolSelectionOperator Operator
highlight link pymolCommand Function
highlight link pymolComment Comment
highlight link pymolNumber Number
highlight link pymolString String

let b:current_syntax = "pymol"
