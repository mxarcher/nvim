---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim

local packer = require("packer")
packer.startup({
    -- 所有插件的安装都书写在 function 中
    function()
        -- 包管理器
        use {
            "wbthomason/packer.nvim"
        }

        -- 安装其它插件

        -- 中文文档
        use {
            "yianwillis/vimcdoc",
        }

        -- nvim-tree
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                -- 依赖一个图标插件
                "kyazdani42/nvim-web-devicons"
            },
            config = function()
                -- 插件加载完成后自动运行 lua/conf/nvim-tree.lua 文件中的代码
                require("conf.nvim-tree")
            end
        }
        -- 优秀的暗色主题
        use {
            "catppuccin/nvim",
            -- 改个别名，因为它的名字是 nvim，可能会冲突
            as = "catppuccin",
            config = function()
                -- 插件加载完成后自动运行 lua/conf/catppuccin.lua 文件中的代码
                require("conf.catppuccin")
            end
        }

    end,
    -- 使用浮动窗口
    config = {
        display = {
            open_fn = require("packer.util").float
        }
    }
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "plugins.lua" },
    callback = function()
        vim.cmd("source <afile>")
        vim.cmd("PackerCompile")
        vim.pretty_print("Recompile plugins successify...")
    end,
    group = packer_user_config,
})

return packer
