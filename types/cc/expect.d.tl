local record M
    metamethod __call: function(
        index: integer,
        value: any,
        ...: string
    ): any
    expect: function(
        index: integer,
        value: any,
        ...: string
    ): any
    field: function(
        tbl: table,
        index: string,
        ...: string
    ): any
    range: function(
        num: number,
        min?: number,
        max?: number
    ): number
end

return M