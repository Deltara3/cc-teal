global record _G
    sleep: function(time: number)
    write: function(text: string): integer
    print: function(...: any): integer
    printError: function(...: any)
    read: function(
        replaceChar?: string,
        history?: {string},
        completeFn?: (function(string): {string}),
        default?: string
    ): string
    _HOST: string
    _CC_DEFAULT_SETTINGS: string
    _CC_DISABLE_LUA51_FEATURES: boolean
end
