" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗
" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║
" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║
" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║
" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║
" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝
"""""""""""general setting"""""""""""""""""
autocmd InsertEnter * set timeoutlen=201
autocmd InsertLeave * set timeoutlen=1000
syntax on
set number
set relativenumber
let mapleader=' '
set nobackup
set noswapfile
set ruler
set cursorline
"colorscheme
"/Users/macos/.config/nvim/plugged/zephyr-nvim
set rtp+=~/.config/nvim/plugged/zephyr-nvim
colorscheme zephyr
set rtp+=~/.config/nvim/plugged/vscode.nvim
"colorscheme vscode
let g:vscode_style = "dark"
"设置浏览保留几行
set so=5
set splitright " splits to the right
set splitbelow " splits below
"缩进
set tabstop=4		" 制表符长度为4空格	缩写：ts
set shiftwidth=4	" 自动缩进长度为4空格
set autoindent		" 自动缩进
set cindent			" c格式自动缩进
set smartindent		" 遇右花括号 } 取消缩进的自动缩进
set mouse=a "支持鼠标
"取消高亮
nnoremap <leader>sc :nohlsearch<CR>  

set hlsearch		" 高亮显示搜索
set incsearch		" 动态高亮搜索
set ignorecase		" 不区分大小写搜索
set smartcase		" 智能大小写搜索

"编码格式
set fileencodings=utf-8,gbk	" 写入文件时采用的编码类型
set termencoding=utf-8		" 输出到终端时采用的编码类型
set encoding=utf-8	" 缓存的文本、寄存器、Vim 脚本文件等
"设 leadertimeout的时间
set timeoutlen=500 "Set timeout length to 500 ms

""""""""""""""基础操作'''''''''''''''''''''''''
"快速移动
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
vnoremap v <Esc>
"插入模式快速移动
"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>
"使用 leader q 直接退出
"nnoremap <leader>q :qa!<cr>
"使用系统剪贴板
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>p "+p
nnoremap Y y$
vnoremap Y y$
"使用 space +h/j/k/l 去移动分屏屏幕
nnoremap <leader>wd <C-w>c
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wl <C-w>l
nnoremap <leader>wk <C-w>k
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>

"快速切换buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
"""""""""""""""""""""""vimplug"""""""""""""""""""" 
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin ('~/.config/nvim/plugged')
" Make sure you use single quotes
" =======
" =======UI
" =======
Plug 'glepnir/zephyr-nvim' "theme
Plug 'Mofiqul/vscode.nvim' "vscode theme
Plug 'akinsho/bufferline.nvim' "buffline
Plug 'norcalli/nvim-colorizer.lua'
Plug 'glepnir/dashboard-nvim'  "dashboard
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'itchyny/vim-cursorword'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
"Plug 'famiu/feline.nvim' "statusline
"
Plug 'p00f/nvim-ts-rainbow' "rainbowbarcket
Plug 'dstein64/vim-startuptime'
"======
"======IntelliTab 只按一次tab就可以
"======
Plug 'pta2002/intellitab.nvim'
" =======
" =======debug
" =======
Plug 'puremourning/vimspector',{'do':'~/.config/nvim/plugged/vimspector/install_gadget.py --enable-python --enable-c'}
Plug 'mfussenegger/nvim-dap'

" =======
" =======easymotion
" =======
Plug 'easymotion/vim-easymotion'

" =======
" =======Explorer
" =======
Plug 'kyazdani42/nvim-tree.lua'

" =======
" =======Neoformat
" =======
Plug 'sbdchd/neoformat'

" =======
" =======fzf.vim
" =======
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" =======
" =======uodoTree
" =======
Plug 'mbbill/undotree'
" =======
" =======treesitter
" =======
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" =======
" =======Edit
" =======
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" Plug 'Pocco81/AutoSave.nvim'
" =======
" =======Search File
" =======
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-telescope/telescope.nvim'

" =======
" =======Tmux navigator
" =======
Plug 'christoomey/vim-tmux-navigator'

" =======
" =======COC
" =======
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" =======
" =======Floaterm
" =======
Plug 'voldikss/vim-floaterm'

" =======
" =======terminal-help
" =======
"Plug 'skywind3000/vim-terminal-help'  
" =======
" =======asyncrun and asynctask
" =======
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.extra'

" =======
" =======accelerated_jk
" =======
Plug 'rhysd/accelerated-jk'

" =======
" =======markdown
" =======
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown','html', 'vim-plug'] }

" =======
" =======typewriting
" =======
Plug 'ybian/smartim'

" =======
" =======Lua
" =======
Plug 'nvim-lua/plenary.nvim'

" Initialize plugin system
call plug#end()
""""""""""""""""""Plugins setting"""""""""""""""""""""
"======
"======CTRLP
"======
"开启这个插件
let g:ctrlp_map = '<c-p>'
"======
"======AutoSave
"======
lua << EOF
--local autosave = require("autosave")

--autosave.setup(
    --{
        --enabled = true,
        --execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        --events = {"InsertLeave", "TextChanged"},
        --conditions = {
            --exists = true,
            --filetype_is_not = {},
            --modifiable = true
        --},
        --write_all_buffers = false,
        --on_off_commands = true,
        --clean_command_line_interval = 0,
        --debounce_delay = 135
    --}
--)
EOF
"======
"======easymotion
"======
nmap ss <Plug>(easymotion-s2)
"======
"======colorizer
"======
set termguicolors
"======
"======dashboard-nvim
"======
let g:dashboard_default_executive ='telescope'
"======
"======nvim-tree.lua
"=====
"open nvim-tree
nnoremap <leader>e :NvimTreeToggle<CR>
lua <<EOF
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    -- default mappings
    vim.g.nvim_tree_bindings = {
      { key = {"<CR>","<2-LeftMouse>","l"}, cb = tree_cb("edit") },
    }
EOF
"======
"======undotree
"======<F6>
"打开undotree
nnoremap <F6> :UndotreeToggle<CR> 
"======
"======
"======vim-floaterm
"======
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_kill   = '<F11>'
let g:floaterm_keymap_toggle = '<F12>'
nnoremap tr :FloatermNew ranger<CR>
"======
"======Tmux Navigator
"======
"
"======
"======smartim
"======
let g:smartim_default='com.apple.keylayout.ABC'
"======
"======asynctask
"======
let g:asynctasks_term_pos = "bottom"
let g:asynctasks_term_reuse=1 
let g:asynctasks_term_focus=0
let g:asynctasks_term_rows=8
let g:asynctasks_term_cols=60
let g:asyncrun_open = 9
nnoremap <silent><leader>lr :AsyncTask file-run<CR>
let g:asynctasks_system = 'macos'
"======
"======IntelliTab 
"======
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? <CMD>lua require("intellitab").indent()<CR> :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"======
"======coc
"======
" Install pulgin
let g:coc_global_extensions=[
			\'coc-json',
			\'coc-vimlsp',
			\'coc-pyright',
			\'coc-clangd',
			\'coc-sumneko-lua',
			\'coc-tsserver',
			\'coc-html',
			\]

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup


" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-o> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"========
"======== vimspector
"========
"启动debug
nmap <silent><nowait><leader>dd <Plug>VimspectorContinue
"重启debug
nmap <silent><nowait><leader>dr <Plug>VimspectorRestart
"暂停debug
nmap <silent><nowait><leader>dp <Plug>VimspectorPause
"打上断点
nmap <silent><nowait><leader>db <Plug>VimspectorToggleBreakpoint 
"单步调试
nmap <silent><nowait><leader>di <Plug>VimspectorStepInto
"单步跳出 
nmap <silent><nowait><leader>do <Plug>VimspectorStepOver
"单步跳过 <f11>
nmap <silent><nowait><leader>ds <Plug>VimspectorStepOut
"
let g:vimspector_install_gadgets = ['debugpy', 'vscode-cpptools' ]

function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad

"========accelerated-jk-superman
"========
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
"========
"======== 'SirVer/ultisnips'
"========
let g:tex_flavor="latex"
inoremap <c-e> <nop>
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', $HOME.'/.config/nvim/plugged/vim-snippets/UltiSnips/']
" Solve extreme insert-mode lag on macOS (by disabling autotrigger)
 augroup ultisnips_no_auto_expansion
     au!
     au VimEnter * au! UltiSnips_AutoTrigger
 augroup END

let g:snips_author="leiyi"
let g:snips_email="1424630446@qq.com"
let g:snips_github="https://github.com/Leiyi548"


"========
"========Telescope
"========
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"========
"========bufferline nvim
"========
" In your init.lua or init.vim
" to move buffer quickly by bufferNumbers
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
"bufferline nvim
set termguicolors
lua << EOF
diagnostics="coc"
vim.opt.listchars = {
    space = "⋅",
    eol = "↴",
}
EOF
"========
"========indent_blankline
"========
lua<<EOF
require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}
EOF

"========
"========indent_blankline
"========
lua<<EOF
require 'nvim-treesitter.configs'.setup {
	rainbow = {
	enable = true
}
}
EOF
"========
"========galaxyline
"========
lua<<EOF
local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section
local colors={
    bg = '#000000',
    fg = '#bbc2cf',
    yellow = '#ECBE7B',
    cyan = '#008080',
    darkblue = '#081633',
    green = '#98be65',
    orange = '#FF8800',
    violet = '#a9a1e1',
    magenta = '#c678dd',
    blue = '#51afef';
    red = '#ec5f67';
    transparent = '#1f2335';
}
gl.short_line_list = {'NvimTree','vista_kind','dbui','packer','undotree','toggleterm','Outline'}

gls.left[1] = {
    RainbowRed = {
        provider = function() return '▊ ' end,
        highlight = {colors.blue,colors.bg}
    },
}
gls.left[2] = {
    ViMode = {
        provider = function()
            -- auto change color according the vim mode
            local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
            [''] = colors.blue,V=colors.blue,
            c = colors.magenta,no = colors.red,s = colors.orange,
            S=colors.orange,[''] = colors.orange,
            ic = colors.yellow,R = colors.violet,Rv = colors.violet,
            cv = colors.red,ce=colors.red, r = colors.cyan,
            rm = colors.cyan, ['r?'] = colors.cyan,
            ['!']  = colors.red,t = colors.red}
            vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..colors.bg)
            return '  '
        end,
    },
}
gls.left[3] = {
    FileSize = {
        provider = 'FileSize',
        condition = condition.buffer_not_empty,
        highlight = {colors.fg,colors.bg}
    }
}
gls.left[4] ={
    FileIcon = {
        provider = 'FileIcon',
        condition = condition.buffer_not_empty,
        highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
    },
}

gls.left[5] = {
    FileName = {
        provider = 'FileName',
        condition = condition.buffer_not_empty,
        highlight = {colors.fg,colors.bg,'bold'}
    }
}

gls.left[6] = {
    LineInfo = {
        provider = 'LineColumn',
        separator = ' ',
        separator_highlight = {'NONE',colors.bg},
        highlight = {colors.fg,colors.bg},
    },
}

gls.left[7] = {
    PerCent = {
        provider = 'LinePercent',
        separator = ' ',
        separator_highlight = {'NONE',colors.bg},
        highlight = {colors.fg,colors.bg,'bold'},
    }
}

gls.left[8] = {
    DiagnosticError = {
        provider = 'DiagnosticError',
        icon = '  ',
        highlight = {colors.red,colors.bg}
    }
}
gls.left[9] = {
    DiagnosticWarn = {
        provider = 'DiagnosticWarn',
        icon = '  ',
        highlight = {colors.yellow,colors.bg},
    }
}

gls.left[10] = {
    DiagnosticHint = {
        provider = 'DiagnosticHint',
        icon = '  ',
        highlight = {colors.cyan,colors.bg},
    }
}

gls.left[11] = {
    DiagnosticInfo = {
        provider = 'DiagnosticInfo',
        icon = '  ',
        separator = ' ',
        separator_highlight = {colors.bg,colors.transparent},
        highlight = {colors.blue,colors.bg},
    }
}

--[[

gls.mid[1] = {
    ShowLspClient = {
        provider = 'GetLspClient',
        condition = function ()
            local tbl = {['dashboard'] = true,['']=true}
            if tbl[vim.bo.filetype] then
                return false
            end
            return true
        end,
        icon = ' LSP:',
        highlight = {colors.yellow,colors.transparent,'bold'}
    }
}
]]


gls.right[1] = {
    FileEncode = {
        provider = 'FileEncode',
        condition = condition.hide_in_width,
        icon='',
        separator = ' ',
        separator_highlight = {colors.bg,colors.transparent},
        highlight = {colors.green,colors.bg,'bold'}
    }
}

gls.right[2] = {
    FileFormat = {
        provider = 'FileFormat',
        condition = condition.hide_in_width,
        icon=' ',
        separator = ' ',
        separator_highlight = {'NONE',colors.bg},
        highlight = {colors.green,colors.bg,'bold'}
    }
}

gls.right[3] = {
    GitIcon = {
        provider = function() return '  ' end,
        condition = condition.check_git_workspace,
        separator = ' ',
        separator_highlight = {'NONE',colors.bg},
        highlight = {colors.violet,colors.bg,'bold'},
    }
}

gls.right[4] = {
    GitBranch = {
        provider = 'GitBranch',
        icon=' ',
        condition = condition.check_git_workspace,
        highlight = {colors.violet,colors.bg,'bold'},
    }
}

gls.right[5] = {
    DiffAdd = {
        provider = 'DiffAdd',
        condition = condition.hide_in_width,
        icon = '  ',
        highlight = {colors.green,colors.bg},
    }
}
gls.right[6] = {
    DiffModified = {
        provider = 'DiffModified',
        condition = condition.hide_in_width,
        icon = ' 柳',
        highlight = {colors.orange,colors.bg},
    }
}
gls.right[7] = {
    DiffRemove = {
        provider = 'DiffRemove',
        condition = condition.hide_in_width,
        icon = '  ',
        highlight = {colors.red,colors.bg},
    }
}

gls.right[8] = {
    RainbowBlue = {
        provider = function() return ' ▊' end,
        highlight = {colors.blue,colors.bg}
    },
}

gls.short_line_left[1] = {
    BufferType = {
        provider = 'FileTypeName',
        separator = ' ',
        separator_highlight = {'NONE',colors.bg},
        highlight = {colors.blue,colors.bg,'bold'}
    }
}

gls.short_line_left[2] = {
    SFileName = {
        provider =  'SFileName',
        condition = condition.buffer_not_empty,
        highlight = {colors.fg,colors.bg,'bold'}
    }
}

gls.short_line_right[1] = {
    BufferIcon = {
        provider= 'BufferIcon',
        highlight = {colors.fg,colors.bg}
    }
}
vim.api.nvim_exec([[
augroup highlight_yank
autocmd!
autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 200})
augroup END
]], true)
vim.api.nvim_command('hi StatusLine guibg='..'#202328')
EOF

