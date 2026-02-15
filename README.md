# zenhan.nvim

nvim plugin to turn off IME you leave from insert mode,
for on Windows and WSL.

## Requirements

### `zenhan.exe`

- C version is here: [Context: https://github.com/iuchim/zenhan]
- Rust version is: [Context: https://github.com/boarnasia/zenhan/tree/master/rust]

## How to setup

### Lazy

Make `lua/plugins/zenhan.lua`, and add the following code:

```lua
return {
    {
        "boarnasia/zenhan.nvim",
        cond = function()
            return vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1
        end,
        opts = {}
    }
}
```
