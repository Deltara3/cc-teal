require("cc.global.colors")

local record PrettyOptions
    function_args: boolean
    function_source: boolean
end

local record Doc
    metamethod __concat: function(...: Doc | string): Doc
end

local record M
    empty: table
    space: table
    line: table
    space_line: table
    text: function(text: string, colour?: Colour): Doc
    concat: function(...: Doc | string): Doc
    nest: function(depth: integer, doc: Doc): Doc
    group: function(doc: Doc): Doc
    write: function(doc: Doc, ribbon_frac?: number)
    print: function(doc: Doc, ribbon_frac?: number)
    render: function(
        doc: Doc,
        width?: integer,
        ribbon_frac?: number
    ): string
    pretty: function(obj: any, options?: PrettyOptions): Doc
    pretty_print: function(
        obj: any,
        options?: PrettyOptions,
        ribbon_frac?: number
    )
end

return M