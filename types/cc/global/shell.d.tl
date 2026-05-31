global record shell
    execute: function(command: string, ...: string): boolean
    run: function(...: string): boolean
    exit: function()
    dir: function(): string
    setDir: function(dir: string)
    path: function(): string
    setPath: function(path: string)
    resolve: function(path: string): string | nil
    resolveProgram: function(path: string): string | nil
    programs: function(include_hidden?: boolean): {string}
    complete: function(sLine: string): {string} | nil
    completeProgram: function(program: string): {string}
    setCompletionFunction: function(
        program: string,
        complete: (function({any: any}, integer, string, {string}): string)
    )
    getCompletionInfo: function(): {string: function}
    getRunningProgram: function(): string
    setAlias: function(command: string, program: string)
    clearAlias: function(command: string)
    aliases: function(): {string: string}
    openTab: function(...: string): integer
    switchTab: function(id: integer)
end