```
/home/askfiy/.config/nvim
├── init.lua
├── ftplugin/
├── lint/
├── lua/
│   ├── basic/
│   │   ├── config.lua
│   │   ├── keybinds.lua
│   │   ├── plugins.lua
│   │   └── settings.lua
│   ├── conf/
│   ├── dap/
│   └── lsp/
└── snippet/
```
- ftplugin：存放不同文件类型的缩进规则文件
- lint：存放各种语言的代码检查规范配置文件，如 pylint 等
- basic：存放基本配置项文件
- conf：存放插件相关配置文件
- dap：存放 DAP 相关配置文件
- lsp：存放 LSP 相关配置文件
- snippet：存放代码片段相关文件


当windows设置了XDG_CONFIG_HOME 和 XDG_DATA_HOME 时nvim的配置文件位置和linux就一致了

设置之后可以通过下面的指令安装packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim-data/site/pack/packer/start/packer.nvim
```
