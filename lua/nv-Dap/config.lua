local dap_install = require("dap-install")
dap_install.config(
	"python",
    {
        adapters = {
            type = "executable",
            command = "python3.9",
            args = {"-m", "debugpy.adapter"}
        },
        configurations = {
            {
                type = "python",
                request = "launch",
                name = "Launch file",
                program = "${file}",
                pythonPath = function()
                    local cwd = vim.fn.getcwd()
                    if vim.fn.executable(cwd .. "/usr/bin/python3.9") == 1 then
                        return cwd .. "/usr/bin/python3.9"
                    elseif vim.fn.executable(cwd .. "/usr/bin/python3.9") == 1 then
                        return cwd .. "/usr/bin/python3.9"
                    else
                        return "/usr/bin/python3.9"
                    end
                end
            }
        }
    }
)


