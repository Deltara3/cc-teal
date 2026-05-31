global type Color = integer
global type Colour = integer

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
    packRGB: function(r: number, g: number, b: number): Color
    unpackRGB: function(rgb: Color): number, number, number
    rgb8: function(r: number, g: number, b: number): Color
    rgb8: function(rgb: Color): number, number, number
    toBlit: function(color: Color): string
    fromBlit: function(hex: string): Color
end

global record colours
    white: Colour
    orange: Colour
    magenta: Colour
    lightBlue: Colour
    yellow: Colour
    lime: Colour
    pink: Colour
    gray: Colour
    lightGray: Colour
    cyan: Colour
    purple: Colour
    blue: Colour
    brown: Colour
    green: Colour
    red: Colour
    black: Colour
    combine: function(...: Colour): Colour
    subtract: function(colours: Colour, ...: Colour): Colour
    test: function(colours: Colour, colour: Colour): boolean
    packRGB: function(r: number, g: number, b: number): Colour
    unpackRGB: function(rgb: Colour): number, number, number
    rgb8: function(r: number, g: number, b: number): Colour
    rgb8: function(rgb: Colour): number, number, number
    toBlit: function(color: Colour): string
    fromBlit: function(hex: string): Colour
end