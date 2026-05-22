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
    subtract: function(Colours: Colour, ...: Colour): Colour
    test: function(Colours: Colour, Colour: Colour): boolean
    packRGB: function(integer, integer, integer): integer
    unpackRGB: function(integer): integer, integer, integer
    toBlit: function(Colour): string
    fromBlit: function(string): Colour | nil
end