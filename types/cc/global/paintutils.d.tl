require("cc.global.colors")

global record paintutils
    parseImage: function(image: string): {{integer}}
    loadImage: function(path: string): {{integer}} | nil
    drawPixel: function(xPos: integer, yPos: integer, colour?: Colour)
    drawLine: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        colour?: Colour
    )
    drawBox: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        colour?: Colour
    )
    drawFilledBox: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        colour?: Colour
    )
    drawImage: function(
        image: {{integer}},
        xPos: integer,
        yPos: integer
    )
end