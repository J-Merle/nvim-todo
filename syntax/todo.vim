" Ensure no syntax has already been set
if exists("b:current_syntax")
  finish
endif


syn region task start="\s*[-✔]" end="$" contains=@Spell
syn region comment start="\s*|" end="$" contains=@Spell
syn region header start="\s*#" end="$" contains=@Spell

hi def link task        Label
hi def link comment     Comment
hi def link header      PreProc
