" Vim syntax file
" Language:    SSF, Siril scripts.
" Maintainer:  Jim Cornmell <jim at cornmell com>
" URL:         www cornmell com
" Last Change: 2022 Oct 1

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'ssf'
endif

syn case ignore

syn keyword aCommand addmax
syn keyword aCommand asinh
syn keyword aCommand autostretch
syn keyword aCommand bg
syn keyword aCommand bgnoise
syn keyword aCommand boxselect
syn keyword aCommand cd
syn keyword aCommand cdg
syn keyword aCommand clahe
syn keyword aCommand clear
syn keyword aCommand clearstar
syn keyword aCommand close
syn keyword aCommand convertraw
syn keyword aCommand convert
syn keyword aCommand cosme
syn keyword aCommand cosme_cfa
syn keyword aCommand crop
syn keyword aCommand ddp
syn keyword aCommand denoise
syn keyword aCommand dumpheader
syn keyword aCommand entropy
syn keyword aCommand exit
syn keyword aCommand extract
syn keyword aCommand extract_Green
syn keyword aCommand extract_Ha
syn keyword aCommand extract_HaOIII
syn keyword aCommand fdiv
syn keyword aCommand fftd
syn keyword aCommand ffti
syn keyword aCommand fill
syn keyword aCommand fill2
syn keyword aCommand find_cosme
syn keyword aCommand find_cosme_cfa
syn keyword aCommand find_hot
syn keyword aCommand findstar
syn keyword aCommand fix_xtrans
syn keyword aCommand fixbanding
syn keyword aCommand fmedian
syn keyword aCommand fmul
syn keyword aCommand gauss
syn keyword aCommand get
syn keyword aCommand ght
syn keyword aCommand grey_flat
syn keyword aCommand help
syn keyword aCommand histo
syn keyword aCommand iadd
syn keyword aCommand idiv
syn keyword aCommand imul
syn keyword aCommand invght
syn keyword aCommand invmodasinh
syn keyword aCommand isub
syn keyword aCommand light_curve
syn keyword aCommand linstretch
syn keyword aCommand linear_match
syn keyword aCommand link
syn keyword aCommand livestack
syn keyword aCommand load
syn keyword aCommand log
syn keyword aCommand ls
syn keyword aCommand merge
syn keyword aCommand mirrorx
syn keyword aCommand mirrory
syn keyword aCommand modasinh
syn keyword aCommand mtf
syn keyword aCommand neg
syn keyword aCommand new
syn keyword aCommand nomad
syn keyword aCommand nozero
syn keyword aCommand offset
syn keyword aCommand pcc
syn keyword aCommand pm
syn keyword aCommand preprocess
syn keyword aCommand preprocess_single
syn keyword aCommand psf
syn keyword aCommand register
syn keyword aCommand reloadscripts
syn keyword aCommand requires
syn keyword aCommand resample
syn keyword aCommand rgbcomp
syn keyword aCommand rgradient
syn keyword aCommand rl
syn keyword aCommand rmgreen
syn keyword aCommand rotate
syn keyword aCommand rotatepi
syn keyword aCommand satu
syn keyword aCommand save
syn keyword aCommand savebmp
syn keyword aCommand savejpg
syn keyword aCommand savepng
syn keyword aCommand savepnm
syn keyword aCommand savetif
syn keyword aCommand savetif32
syn keyword aCommand savetif8
syn keyword aCommand select
syn keyword aCommand seqapplyreg
syn keyword aCommand seqclean
syn keyword aCommand seqcosme
syn keyword aCommand seqcosme_cfa
syn keyword aCommand seqcrop
syn keyword aCommand seqextract_Green
syn keyword aCommand seqextract_Ha
syn keyword aCommand seqextract_HaOIII
syn keyword aCommand seqfind_cosme
syn keyword aCommand seqfind_cosme_cfa
syn keyword aCommand seqmtf
syn keyword aCommand seqpsf
syn keyword aCommand seqsplit_cfa
syn keyword aCommand seqstat
syn keyword aCommand seqsubsky
syn keyword aCommand seqtilt
syn keyword aCommand set
syn keyword aCommand set16bits
syn keyword aCommand set32bits
syn keyword aCommand setcompress
syn keyword aCommand setcpu
syn keyword aCommand setext
syn keyword aCommand setfindstar
syn keyword aCommand setmag
syn keyword aCommand setmagseq
syn keyword aCommand setmem
syn keyword aCommand setphot
syn keyword aCommand setref
syn keyword aCommand split
syn keyword aCommand split_cfa
syn keyword aCommand stack
syn keyword aCommand stackall
syn keyword aCommand starnet
syn keyword aCommand start_ls
syn keyword aCommand stat
syn keyword aCommand stop_ls
syn keyword aCommand subsky
syn keyword aCommand thresh
syn keyword aCommand tilt
syn keyword aCommand unselect
syn keyword aCommand unsetmag
syn keyword aCommand unsetmagseq
syn keyword aCommand unsharp
syn keyword aCommand visu
syn keyword aCommand wavelet
syn keyword aCommand wrecons

syn match anArgument / -2pass/
syn match anArgument / -a/
syn match anArgument / -A/
syn match anArgument / -aperture/
syn match anArgument / -auto/
syn match anArgument / -bias/
syn match anArgument / -cfa/
syn match anArgument / -clear/
syn match anArgument / -convergence/
syn match anArgument / -dark/
syn match anArgument / -debayer/
syn match anArgument / -drizzle/
syn match anArgument / -equalize_cfa/
syn match anArgument / -even/
syn match anArgument / -fastnorm/
syn match anArgument / -filter-fwhm/
syn match anArgument / -filter-included/
syn match anArgument / -filter-quality/
syn match anArgument / -filter-round/
syn match anArgument / -filter-wfwhm/
syn match anArgument / -fitseq/
syn match anArgument / -fix_xtrans/
syn match anArgument / -flat/
syn match anArgument / -focal/
syn match anArgument / -force_radius/
syn match anArgument / -framing/
syn match anArgument / -gain/
syn match anArgument / -human/
syn match anArgument / -independent/
syn match anArgument / -inner/
syn match anArgument / -interp/
syn match anArgument / -layer/
syn match anArgument / -linked/
syn match anArgument / -maxstars/
syn match anArgument / -max_val/
syn match anArgument / -minpairs/
syn match anArgument / -min_val/
syn match anArgument / -noflip/
syn match anArgument / -nonorm/
syn match anArgument / -noout/
syn match anArgument / -norm/
syn match anArgument / -noscosmetic/
syn match anArgument / -nostarlist/
syn match anArgument / -nostarmask/
syn match anArgument / -opt/
syn match anArgument / -out/
syn match anArgument / -outer/
syn match anArgument / -output_norm/
syn match anArgument / -pixelsize/
syn match anArgument / -platesolve/
syn match anArgument / -prefix/
syn match anArgument / -radius/
syn match anArgument / -reg/
syn match anArgument / -relax/
syn match anArgument / -rescale/
syn match anArgument / -rgb_equal/
syn match anArgument / -roundness/
syn match anArgument / -samples/
syn match anArgument / -sel/
syn match anArgument / -selected/
syn match anArgument / -ser/
syn match anArgument / -sigma/
syn match anArgument / -smooth/
syn match anArgument / -start/
syn match anArgument / -stat/
syn match anArgument / -stretch/
syn match anArgument / -stride/
syn match anArgument / -tolerance/
syn match anArgument / -transf/
syn match anArgument / -type/
syn match anArgument / -upscale/
syn match anArgument /=add/
syn match anArgument /=addscale/
syn match anArgument /=mul/
syn match anArgument /=mulscale/

syn match Path /[a-zA-Z0-9-_~\/\.]\+/
syn match aNumber /\d\+/
syn match aFloat /\d\+\.\d\+/
syn match aVersionNumber /\d\+\.\d\+\.\d\+/

syn region sirilComment start="#" end="$" contains=@Spell
syn region sirilString start="\"" end="\""

" Define the default highlighting.
command -nargs=+ HiLink hi def link <args>

HiLink sirilComment  Comment
HiLink path  Path
HiLink aVersionNumber VersionNumber
HiLink aFloat Float
HiLink aNumber Number
HiLink sirilString   String
HiLink aCommand Command
HiLink anArgument    Type

delcommand HiLink

hi Comment       guifg=Green
hi Type          guifg=Yellow  gui=italic
hi Command       guifg=Yellow  gui=bold
hi Float         guifg=White   gui=bold
hi Number        guifg=White   gui=bold
hi Path          guifg=Cyan gui=italic
hi VersionNumber guifg=Cyan    gui=bold

let b:current_syntax = "ssf"

