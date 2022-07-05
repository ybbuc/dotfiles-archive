local opt = vim.opt

opt.undofile = true -- Enable undo files
opt.mouse = "n"     -- Enable mouse in NORMAL mode

-- Ignore compiled files
opt.wildignore = "__pycache__"
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }

-- Search
opt.hlsearch = true
opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true  -- If search text contains uppercase, case will not be ignored
opt.incsearch = true  -- Incremental search

-- Visual settings
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.showmatch = true      -- Show matching parens
opt.cursorline = true     -- Highlight current line
opt.laststatus=3

-- Indent settings
opt.autoindent = true
opt.expandtab= true -- Tabs to spaces
opt.shiftwidth = 4  -- The width of an indent
opt.softtabstop = 4 
opt.tabstop = 4     -- The width of a tab
opt.wrap = true

-- Splits
opt.splitbelow = true -- Prefer windows splitting to the bottom
opt.splitright = true -- Prefer windows splitting to the right

-- Fold
opt.foldmethod = "marker"
opt.foldlevel = 0
opt.modelines = 1

opt.belloff = "all" -- Just turn the dang bell off

opt.swapfile = false -- Living on the edge