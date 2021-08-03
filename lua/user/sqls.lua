-- See: https://github.com/kabouzeid/nvim-lspinstall#custom-installer
local M = {}

M.config = function()
    require'lspconfig'.sqls.setup{}

    -- require'lspinstall'.setup({
        -- local config = require"lspinstall/util".extract_config("sqls")
        -- config.default_config.cmd[1] = DATA_PATH .. "/lspinstall/sqls/sqls"
    -- })

    -- require'lspinstall/servers'.sqls = vim.tbl_extend('error', config, {
        -- install_script = [[
        -- echo Installing sqls via go: See https://github.com/lighttiger2505/sqls#installation
        -- go get github.com/lighttiger2505/sqls

        -- if [ -d $HOME/.local/share/nvim/lspinstall/sqls ];then
        -- echo Folder exists: $HOME/.local/share/nvim/lspinstall/sqls
        -- else
        -- echo Making folder: $HOME/.local/share/nvim/lspinstall/sqls
        -- mkdir -p $HOME/.local/share/nvim/lspinstall/sqls
        -- fi

        -- if [ -e $HOME/.local/share/nvim/lspinstall/sqls/sqls ];then
        -- echo Link exists: $HOME/.local/share/nvim/lspinstall/sqls/sqls
        -- else
        -- echo Adding link: $HOME/.local/share/nvim/lspinstall/sqls/sqls
        -- ln -s $HOME/go/bin/sqls $HOME/.local/share/nvim/lspinstall/sqls/sqls
        -- fi

        -- echo Done
        -- ]],
        -- uninstall_script = nil
    -- })
end

return M
