require("craftos.colors")

local type SerializeOptions = record
    compact: boolean | nil
    allow_repetitions: boolean | nil
end

local type SerializeJSONOptions = record
    nbt_style: boolean | nil
    unicode_strings: boolean | nil
    allow_repetitions: boolean | nil
end

local type UnserializeJSONOptions = record
    nbt_style: boolean | nil
    parse_null: boolean | nil
    parse_empty_array: boolean | nil
end

global record textutils
    slowWrite: function(text: string, rate?: integer)
    slowPrint: function(text: string, rate?: integer)
    formatTime: function(time: integer, twentyFourHour?: boolean): string
    pagedPrint: function(text: string, free_lines?: integer): number
    tabulate: function(...: {any: any} | Color)
    pagedTabulate: function(...: {any: any} | Color)
    empty_json_array: table
    json_null: table
    serialize: function(obj: any, opts: SerializeOptions): string
    serialise: function(obj: any, opts: SerializeOptions): string
    unserialize: function(str: string): any | nil
    unserialise: function(str: string): any | nil
    serializeJSON: function(obj: any, options: SerializeJSONOptions): string
    serializeJSON: function(obj: any, nbtStyle: boolean): string
    serialiseJSON: function(obj: any, options: SerializeJSONOptions): string
    serialiseJSON: function(obj: any, nbtStyle: boolean): string
    unserializeJSON: function(
        str: string,
        options: UnserializeJSONOptions
    ): any | nil, string | nil
    unserialiseJSON: function(
        str: string,
        options: UnserializeJSONOptions
    ): any | nil, string | nil
    urlEncode: function(str: string): string
    complete: function(sSearchText: string, tSearchTable: table): {string}
end