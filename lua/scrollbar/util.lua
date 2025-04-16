local M = {}

function M.is_float(winid)
    if winid > 0 then
        local ok, c = pcall(vim.api.nvim_win_get_config, winid)
        if ok and c.col ~= nil then
            return true
        else
            return false
        end
    else
        return false
    end
end

return M
