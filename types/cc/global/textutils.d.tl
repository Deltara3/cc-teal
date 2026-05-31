require("cc.global.colors")

local record SerializeOptions
    compact: boolean | nil
    allow_repetitions: boolean | nil
end

local record SerializeJSONOptions
    nbt_style: boolean | nil
    unicode_strings: boolean | nil
    allow_repetitions: boolean | nil
end

local record UnserializeJSONOptions
    nbt_style: boolean | nil
    parse_null: boolean | nil
    parse_empty_array: boolean | nil
end

global record textutils
    slowWrite: function(text: string, rate?: number)
    slowPrint: function(sText: string, nRate?: number)
    formatTime: function(nTime: integer, bTwentyFourHour?: boolean): string
    pagedPrint: function(text: string, free_lines?: integer): integer
    tabulate: function(...: {any: any} | Color)
    pagedTabulate: function(...: {any: any} | Color)
    empty_json_array: table
    json_null: table
    serialize: function(t: any, opts: SerializeOptions): string
    serialise: function(t: any, opts: SerializeOptions): string
    unserialize: function(s: string): any | nil
    unserialise: function(s: string): any | nil
    serializeJSON: function(t: any, options?: SerializeJSONOptions): string
    serializeJSON: function(t: any, bNBTStyle: boolean): string
    serialiseJSON: function(t: any, options?: SerializeJSONOptions): string
    serialiseJSON: function(t: any, bNBTStyle: boolean): string
    unserializeJSON: function(
        s: string,
        options?: UnserializeJSONOptions
    ): any | nil, string | nil
    unserialiseJSON: function(
        s: string,
        options?: UnserializeJSONOptions
    ): any | nil, string | nil
    urlEncode: function(str: string): string
    complete: function(sSearchText: string, tSearchTable?: table): {string}
end