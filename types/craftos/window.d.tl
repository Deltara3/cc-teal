require("craftos.term")

local type Window = record is ITerminal
    getLine: function(y: integer): string, string, string
    setVisible: function(visible: boolean)
    isVisible: function(): boolean
    redraw: function()
    restoreCursor: function()
    getPosition: function(): integer, integer
    reposition: function(
        new_x: integer,
        new_y: integer,
        new_width?: integer,
        new_height?: integer,
        new_parent?: ITerminal
    )
end

global record window
    create: function(
        parent: ITerminal,
        nX: integer,
        nY: integer,
        nWidth: integer,
        nHeight: integer,
        bStartVisible?: boolean
    ): Window
end