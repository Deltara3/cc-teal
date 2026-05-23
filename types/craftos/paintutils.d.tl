require("craftos.colors")

global record paintutils
    parseImage: function(image: string): {{integer}}
    loadImage: function(path: string): {{integer}} | nil
    drawPixel: function(xPos: integer, yPos: integer, color?: Color)
    drawLine: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        color?: Color
    )
    drawBox: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        color?: Color
    )
    drawFilledBox: function(
        startX: integer,
        startY: integer,
        endX: integer,
        endY: integer,
        color?: Color
    )
    drawImage: function(image: {{integer}}, xPos: integer, yPos: integer)
end