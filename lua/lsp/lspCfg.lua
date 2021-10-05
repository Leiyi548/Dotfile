require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}


-- LspInstall的配置
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

