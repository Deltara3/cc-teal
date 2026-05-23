local type CompleteOptions = record
    include_files: boolean | nil
    include_dirs: boolean | nil
    include_hidden: boolean | nil
end

local enum OpenReadMode
    "r"
    "rb"
end

local enum OpenWriteMode
    "w"
    "wb"
    "a"
    "ab"
end

local enum OpenReadWriteMode
    "r+"
    "rb+"
    "w+"
    "wb+"
    "a+"
    "ab+"
end

local enum SeekWhence
    "set"
    "cur"
    "end"
end

local type ReadHandle = record
    read: function(count?: integer): string | integer | nil
    readAll: function(): string | nil
    readLine: function(withTrailing?: boolean): string | nil
    seek: function(
        whence?: SeekWhence,
        offset?: integer
    ): integer | nil, string | nil
    close: function()
end

local type WriteHandle = record
    write: function(contents: string)
    write: function(charcode: integer)
    writeLine: function(text: string)
    flush: function()
    seek: function(
        whence?: SeekWhence,
        offset?: integer
    ): integer | nil, string | nil
    close: function()
end

local type ReadWriteHandle = record
    read: function(count?: integer): string | integer | nil
    readAll: function(): string | nil
    readLine: function(withTrailing?: boolean): string | nil
    seek: function(
        whence?: SeekWhence,
        offset?: integer
    ): integer | nil, string | nil
    write: function(contents: string)
    write: function(charcode: integer)
    writeLine: function(text: string)
    flush: function()
    close: function()
end

local type FileAttributes = record
    size: integer
    isDir: boolean
    isReadOnly: boolean
    created: integer
    modified: integer
end

global record fs
    complete: function(
        path: string,
        location: string,
        include_files?: boolean,
        include_dirs?: boolean
    ): {string}
    complete: function(
        path: string,
        location: string,
        options: CompleteOptions
    ): {string}
    find: function(path: string): {string}
    isDriveRoot: function(path: string): boolean
    list: function(path: string): {string}
    combine: function(path: string, ...: string): string
    getName: function(path: string): string
    getDir: function(path: string): string
    getSize: function(path: string): integer
    exists: function(path: string): boolean
    isDir: function(path: string): boolean
    isReadOnly: function(path: string): boolean
    makeDir: function(path: string)
    move: function(path: string, dest: string)
    copy: function(path: string, dest: string)
    delete: function(path: string)
    open: function(
        path: string,
        mode: OpenReadMode
    ): ReadHandle | nil, string | nil
    open: function(
        path: string,
        mode: OpenWriteMode
    ): WriteHandle | nil, string | nil
    open: function(
        path: string,
        mode: OpenReadWriteMode
    ): ReadWriteHandle | nil, string | nil
    getDrive: function(path: string): string | nil
    getFreeSpace: function(path: string): integer | string
    getCapacity: function(path: string): integer | nil
    attributes: function(path: string): FileAttributes
end