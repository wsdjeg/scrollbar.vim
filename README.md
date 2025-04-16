# scrollbar.nvim

> _scrollbar.nvim_ is floating scrollbar plugin for neovim.

![scrollbar](https://img.spacevim.org/scrollbar-vim.png)

<!-- vim-markdown-toc GFM -->

* [Requirements](#requirements)
* [Installation](#installation)
* [Setup](#setup)
* [Debug](#debug)
* [Feedback](#feedback)

<!-- vim-markdown-toc -->

## Requirements

- Neovim: `exists('*nvim_open_win')`

## Installation

Using [nvim-plug](https://github.com/wsdjeg/nvim-plug)

```lua
require('plug').add({
    {
        'wsdjeg/scrollbar.vim',
        config = function()
            require('scrollbar').setup()
        end,
    },
})
```

## Setup

The default option:

```lua
require('scrollbar').setup({
    max_size = 10,
    min_size = 5,
    width = 1,
    right_offset = 1,
    excluded_filetypes = {
        'startify',
        'git-commit',
        'leaderf',
        'NvimTree',
        'tagbar',
        'defx',
        'neo-tree',
        'qf',
    },
    shape = {
        head = '▲',
        body = '█',
        tail = '▼',
    },
    highlight = {
        head = 'Normal',
        body = 'Normal',
        tail = 'Normal',
    },
})
```

## Debug

Using [logger.nvim](https://github.com/wsdjeg/logger.nvim):

```lua
require('plug').add({
    {
        'wsdjeg/scrollbar.vim',
        config = function()
            require('scrollbar').setup()
        end,
        depends = {
            { 'wsdjeg/logger.nvim' },
        },
    },
})
```

## Feedback

If you encounter any bugs or have suggestions, please file an issue in the [issue tracker](https://github.com/wsdjeg/scrollbar.vim/issues)
