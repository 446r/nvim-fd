# nvim-fd

Use fd in Neovim.

## Installation インストール

Clone (place it in your startup plugins or use `vim.pack.add`).

```
cd ~/.config/nvim/pack/xxx/start/
git clone https://github.com/446r/nvim-fd.git
```

init.lua

```
require("nvim-fd").setup()
```

Customize.

```
require("nvim-fd").setup({
  options = { "-H", "-I" },
  command = "Fd",
})
```

```
require("nvim-fd").setup({
  options = { "-t f", "-I" },
  command = "Fd",
})
```

## Usage 使い方

```
:Fd keyword
```

```
:Fd keyword target_dir
```

```
:Fd -e extension
```

```
:Fd -t d keyword
```

```
:Fd --help
```

