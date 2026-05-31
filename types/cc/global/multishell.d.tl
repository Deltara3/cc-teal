global record multishell
    getFocus: function(): integer
    setFocus: function(n: integer): boolean
    getTitle: function(n: integer): string | nil
    setTitle: function(n: integer, title: string)
    getCurrent: function(): integer
    launch: function(
        tProgramEnv: {any: any},
        sProgramPath: string,
        ...: any
    ): integer
    getCount: function(): integer
end