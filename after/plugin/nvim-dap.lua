
local dap = require("dap")
local mason_registry = require("mason-registry")
local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adaptor/codelldb"

dap.adapters.codelldb = {
    type = 'server',
    port = "${port}",
    executable = {
        command = codelldb_path,
        args = { "--port", "${port}" },
    }
}



