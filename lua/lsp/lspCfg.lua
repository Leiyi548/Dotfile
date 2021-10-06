-- LspInstall的配置

require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end


require('lspconfig').lua.setup{
   settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
                maxPreload = 1500,
                preloadFileSize = 300
            },
			diagnostics = {
			  globals ={'vim','use'}
			}
        }
    }
}

