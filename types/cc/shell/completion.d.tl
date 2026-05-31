local record M
    file: function(shell: table, text: string): {string}
    dir: function(shell: table, text: string): {string}
    dirOrFile: function(
        shell: table,
        text: string,
        previous: {string},
        add_space?: boolean
    ): {string}
    program: function(shell: table, text: string): {string}
    programWithArgs: function(
        shell: table,
        text: string,
        previous: {string},
        starting: integer
    ): {string}
    help: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    choice: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    peripheral: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    side: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    setting: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    command: function(
        shell: table,
        text: string,
        previous: {string},
        ...: any
    ): {string}
    build: function(...: table | function | nil)
end

return M