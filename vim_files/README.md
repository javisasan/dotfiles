## Vim Configuration

All files should be placed in the `home` folder, prefixed with a dot.

- `.vimrc` is the Vim configuration file
- `.vim` is the folder with plugins, etc. Set Intelephense key there.
- `.ideavimrc` is the JetBrains Vim plugin configuration.


### Install plugins

In Vim, install plugins with the command

`:PlugInstall`

### CoC Configuration

Install NVM in order to install NodeJS:

(https://github.com/nvm-sh/nvm#install--update-script)

Then install node:

`nvm install 22` (or whichever LTS version is)

Install COC languages:

`:CocInstall coc-tsserver coc-json coc-html coc-css coc-pyright coc-phpls`
