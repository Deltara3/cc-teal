require("cc.global.colors")

global interface ITerminal
    write: function(text: string)
    scroll: function(by: integer)
    getCursorPos: function(): integer, integer
    setCursorPos: function(x: integer, y: integer)
    getCursorBlink: function(): boolean
    setCursorBlink: function(blink: boolean)
    getSize: function(): integer, integer
    clear: function()
    clearLine: function()
    getTextColour: function(): Colour
    getTextColor: function(): Color
    setTextColour: function(colour: Colour)
    setTextColor: function(color: Color)
    getBackgroundColour: function(): Colour
    getBackgroundColor: function(): Color
    setBackgroundColour: function(colour: Colour)
    setBackgroundColor: function(color: Color)
    isColour: function(): boolean
    isColor: function(): boolean
    blit: function(text: string, textColor: string, backgroundColor: string)
    setPaletteColour: function(index: Colour, colour: integer)
    setPaletteColour: function(index: Colour, r: integer, g: integer, b: integer)
    setPaletteColor: function(index: Color, color: integer)
    setPaletteColor: function(index: Color, r: integer, g: integer, b: integer)
    getPaletteColour: function(index: Colour): integer, integer, integer
    getPaletteColor: function(index: Color): integer, integer, integer
end

global record term is ITerminal
    nativePaletteColour: function(integer): integer, integer, integer
    nativePaletteColor: function(integer): integer, integer, integer
    redirect: function(target: ITerminal): ITerminal
    current: function(): ITerminal
    native: function(): ITerminal
end