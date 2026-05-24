global type Colour = integer

global record colours
    white: Colour
    orange: Colour
    magenta: Colour
    lightBlue: Colour
    yellow: Colour
    lime: Colour
    pink: Colour
    grey: Colour
    lightGrey: Colour
    cyan: Colour
    purple: Colour
    blue: Colour
    brown: Colour
    green: Colour
    red: Colour
    black: Colour
    combine: function(...: Colour): Colour
    subtract: function(colours: Colour, ...: Colour): Colour
    test: function(colours: Colour, Colour: Colour): boolean
    packRGB: function(r: integer, g: integer, b: integer): integer
    unpackRGB: function(rgb: integer): integer, integer, integer
    toBlit: function(colour: Colour): string
    fromBlit: function(hex: string): Colour | nil
end
