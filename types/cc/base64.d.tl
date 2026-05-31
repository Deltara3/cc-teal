local record M
    encode: function(
        str: string,
        alt_chars?: string
    ): string
    decode: function(
        str: string,
        alt_chars?: string
    ): string | nil, string | nil
end

return M