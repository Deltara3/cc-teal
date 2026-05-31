local record M
    wrap: function(text: string, width?: integer): {string}
    ensure_width: function(line: string, width?: integer): string
    split: function(
        str: string,
        deliminator: string,
        plain?: boolean,
        limit?: integer
    ): {string}
end

return M