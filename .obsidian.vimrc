" unmap space
unmap <Space>
" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
" I like using H and L for beginning/end of line
nmap H ^
nmap L $
vmap H ^
vmap L $
nmap Y y$
vmap Y y$
" Windows navigation
nmap sv :obcommand workspace:split-vertical
" Quickly remove search highlights
nmap <Space>sc :nohl

"custom keybindings

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
" Surround text with [[ ]] to make a wikilink
" NOTE: must use 'map' and not 'nmap'
exmap wiki surround [[ ]]
map [[ :wiki


