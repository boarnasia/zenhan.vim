# zenhan.nvim

It's plugin for nvim on windows or wsl2.

Turn off ime when you leave from insert mode.

According to AI, it originally existed in “delphinus/zenhan.nvim”
but since it no longer exists, I created it.

## Requirements

- `zenhan.exe`

Original C version was created by [iuchim](https://github.com/iuchim).
I sincerely appreciate their work and inspiration.  
I made a Rust version based on their project,  
as I don't have a C build environment.

- C version is here: [Context: https://github.com/iuchim/zenhan]
- Rust version is: [Context: https://github.com/boarnasia/zenhan]

## How to setup

### Lazy

Make `lua/plugins/zenhan.lua`, and add the following code:

```lua
return {
    {
        "boarnasia/zenhan.nvim",
        cond = vim.fn.has('wsl') == 1,
        config = function()
        require("zenhan").setup({
                exe = "zenhan.exe",
            })
        end,
    }
}

```
