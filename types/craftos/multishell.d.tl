global record multishell
    getFocus: function(): integer
    setFocus: function(index: integer): boolean
    getTitle: function(index: integer): string | nil
    setTitle: function(index: integer, title: string)
    getCurrent: function(): integer
    launch: function(
        tProgramEnv: {any: any},
        sProgramPath: string,
        ...: any
    ): integer
    getCount: function(): integer
end