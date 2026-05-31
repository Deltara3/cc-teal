require("cc.global.fs")

local enum OpenMode
    "r"
    "w"
    "a"
    "r+"
    "w+"
    "rb"
    "wb"
    "ab"
    "rb+"
    "wb+"
end

local enum ReadFormat
    "l"
    "L"
    "a"
    "*l"
    "*L"
    "*a"
end

local record Handle
    close: function(): boolean | nil, string | nil
    flush: function()
    lines: function(...: any): (function(): string | nil)
    read: function(...: ReadFormat): string | nil...
    seek: function(whence?: SeekWhence, offset?: integer): integer
    write: function(...: string | number| integer): Handle | nil, string | nil
end

global record io
    stdin: Handle
    stdout: Handle
    stderr: Handle
    close: function(file?: Handle)
    flush: function()
    input: function(file?: Handle | string): Handle
    lines: function(filename?: string, ...: any): (function(): string | nil)
    open: function(filename: string, mode?: OpenMode): Handle | nil, string | nil
    output: function(file?: Handle | string): Handle
    read: function(...: ReadFormat): string | nil...
    type: function(obj: Handle): string | nil
    write: function(...: string)
end