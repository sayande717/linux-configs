-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
-- -- The setup config table shows all available config options with their default values:
-- -- The setup config table shows all available config options with their default values:
-- The setup config table shows all available config options with their default values:
-- The setup config table shows all available config options with their default values:

local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt

local function open_nvim_tree()
    -- open tree
  require("nvim-tree.api").tree.open()
end

local function open_nvim_terminal()
    -- open terminal
    require("nvterm.terminal").new "horizontal"
end

autocmd({ "VimEnter"}, {
    callback = function ()
        -- logic: If terminal opens first, it'll always open on the right side.
        open_nvim_terminal()
        open_nvim_tree()
    end
})

-- Indenting
opt.expandtab = true
opt.shiftwidth = 4
opt.smartindent = true
opt.tabstop = 4
opt.softtabstop = 4
opt.relativenumber=true
