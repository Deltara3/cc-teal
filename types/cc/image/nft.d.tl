require("cc.global.term")

local record NftLine
    background: string
    foreground: string
    text: string
end

local record M
    parse: function(image: string): {NftLine}
    load: function(path: string): {NftLine}
    draw: function(
        image: {NftLine},
        xPos: integer,
        yPos: integer,
        target?: ITerminal
    )
end

return M