require "nvchad.options"

local opt = vim.opt

-- Line numbers
opt.nu = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false
opt.linebreak = true

-- Search settings
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "120"
opt.cursorline = true
opt.guicursor = ""

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Splits
opt.splitright = true
opt.splitbelow = true

-- File handling
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv "HOME" .. "/.vim/undodir"
opt.undofile = true
opt.undolevels = 10000

-- Performance
opt.updatetime = 250
opt.timeoutlen = 300
opt.lazyredraw = false -- Don't redraw while executing macros (keep false for better UI)
opt.synmaxcol = 240 -- Only syntax highlight first 240 columns (performance)

-- Completion
opt.completeopt = "menu,menuone,noselect"
opt.pumheight = 10

-- Misc
opt.isfname:append "@-@"
opt.clipboard = "unnamedplus"
opt.mouse = "a"
opt.showmode = false
opt.inccommand = "split"

-- Fold settings (handled by nvim-ufo)
opt.foldcolumn = "0"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

-- Disable some builtin vim plugins
local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
  "tutor",
  "rplugin",
  "syntax",
  "synmenu",
  "optwin",
  "compiler",
  "bugreport",
  "ftplugin",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
