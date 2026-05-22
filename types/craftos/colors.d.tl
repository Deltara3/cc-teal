global type Color = integer

global record colors
    white: Color
    orange: Color
    magenta: Color
    lightBlue: Color
    yellow: Color
    lime: Color
    pink: Color
    gray: Color
    lightGray: Color
    cyan: Color
    purple: Color
    blue: Color
    brown: Color
    green: Color
    red: Color
    black: Color
    combine: function(...: Color): Color
    subtract: function(colors: Color, ...: Color): Color
    test: function(colors: Color, color: Color): boolean
    packRGB: function(integer, integer, integer): integer
    unpackRGB: function(integer): integer, integer, integer
    toBlit: function(Color): string
    fromBlit: function(string): Color | nil
end