local M = {}

function M.setup(opts)
	opts = opts or {}
	local exe = opts.exe or "zenhan.exe"
	local cond = opts.cond or true

	if cond then
		if vim.fn.executable(exe) == 1 then
			vim.api.nvim_create_autocmd("InsertLeave", {
				callback = function()
					-- Turn off IME when leaving insert mode
					vim.fn.jobstart({ exe, "0" })
				end,
			})
		else
			vim.notify(exe .. " is not found.")
		end
	end
end

return M
