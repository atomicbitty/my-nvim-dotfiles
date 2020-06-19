# My neovim configuration.

I released my configuration under the MIT license so I can use it wherever I want and you can too!
It only works on linux machines but you are free to modify it and adapt it to Windows or MacOS. If you are going to redistribute it, please, read the license.

# How to set it up

First of all, you need to install some dependency packages:

Debian, Ubuntu:
```
sudo apt install nodejs npm ccls
```

Fedora:
```
sudo dnf install nodejs npm ccls
```

Arch, Manjaro:
```
sudo pacman -S nodejs npm ccls
```

Then, you can clone the repository:

```
git clone https://github.com/atomicbitty/my-nvim-dotfiles
```

Copy the contents of the cloned repo folder to `~/.config/nvim`.
After doing that, open Neovim, you will probably see an error, don't worry, it is normal. Press ENTER, and type this command to install the plugins:
```
:PlugInstall
```

After that, you can install the COC plugins for autocompletion, to install the one I most use, type the command:
```
:CocInstall coc-ccls
```

Now, we need to configure COC to autocomplete correctly. Type `:CocConfig`, paste it, and modify it to your needs:
```json
{
    "languageserver": {
        "ccls": {
            "command": "ccls",
            "filetypes": [
                "c",
                "cpp"
            ],
            "initializationOptions": {
                "cache": {
                    "directory": "/tmp/ccls"
                }
            },
            "rootPatterns": [
                ".ccls",
                "compile_commands.json",
            ]
        }
    }
}
```
The languages I most use are C and C++, so this is the configuration for those languages. 

Now, To make COC key mappings work, just paste [this code](https://github.com/neoclide/coc.nvim#example-vim-configuration) to `$MYVIMRC`.

I installed the COC extensions for ccls and json, but there are [tons of other extensions for it](https://github.com/neoclide/coc.nvim/network/dependents?dependents_before=NDA0MzM0NjQyNA).

Also, if you want those beautiful fonts, [get some here](https://www.nerdfonts.com/)!

### Have fun!
