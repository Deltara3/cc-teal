local record M
    make_encoder: function(): (function({integer}): string)
    encode: function(input: {integer}): string
    make_decoder: function(): (function(string): {integer})
    decode: function(input: string): {integer}
end

return M