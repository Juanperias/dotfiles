local lsp_path = vim.fn.stdpath("config") .. "/lua/lsp"

vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
})


for _, file in ipairs(vim.fn.readdir(lsp_path)) do
	local lsp_name = file:gsub("%.lua$", "")
	local module = require("lsp." .. lsp_name)
	
	vim.lsp.config[lsp_name] = module;
	vim.lsp.enable(lsp_name)
end

require("config.lazy")
require("config.cmd")
require("config.keymaps")
