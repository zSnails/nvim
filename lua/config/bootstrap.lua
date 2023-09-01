-- installation for unix systems
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
--
--  installation on windows 8+
-- git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"


local M = {}

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

function M.install()
    vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }
    pcall(vim.cmd, "packadd packer.nvim")
    pcall(vim.cmd, "PackerSync")
end

return M
