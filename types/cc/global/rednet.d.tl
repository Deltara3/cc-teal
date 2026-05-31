global record rednet
    CHANNEL_BROADCAST: integer
    CHANNEL_REPEAT: integer
    MAX_ID_CHANNELS: integer
    open: function(modem: string)
    close: function(modem?: string)
    isOpen: function(modem?: string): boolean
    send: function(
        recipient: integer,
        message: any,
        protocol?: string
    ): boolean
    broadcast: function(message: any, protocol?: string)
    receive: function(
        protocol_filter?: string,
        timeout?: number
    ): integer | nil, any | nil, string | nil
    host: function(protocol: string, hostname: string)
    unhost: function(protocol: string)
    lookup: function(
        protocol: string,
        hostname?: string,
        timeout?: number
    ): integer... | nil
    run: function()
end