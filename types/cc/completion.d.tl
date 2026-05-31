local record M
    choice: function(
        text: string,
        choices: {string},
        add_space?: boolean
    ): {string}
    peripheral: function(
        text: string,
        add_space?: boolean
    ): {string}
    side: function(
        text: string,
        add_space?: boolean
    ): {string}
    setting: function(
        text: string,
        add_space?: boolean
    ): {string}
    command: function(
        text: string,
        add_space?: boolean
    ): {string}
end

return M