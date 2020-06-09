# My neovim configuration.

I released my configuration under the MIT license so I can use it wherever I want and you can too!
It only works on linux machines but you are free to modify it and adapt it to Windows or MacOS. If you are going to redistribute it, please, read the license.

# How to set it up

To clone the repository type:

<pre>git clone https://github.com/atomicbitty/my-nvim-dotfiles</pre>

Then copy the contents of the folder to <code>~/.config/nvim</code>.
After copying the contents, open Neovim and type this command to install the plugins:
<pre>:PlugInstall</pre>

After that, you can install the COC plugins for syntax highlighting, to install the ones I most use, type the command:
<pre>:CocInstall coc-clangd coc-json</pre>

# Porting to Vim
If you want to port it to vim, you are free, I did not test it tho.

Have fun!
