global record gps
    CHANNEL_GPS: integer
    locate: function(
        timeout?: number,
        debug?: boolean
    ): integer | nil, integer | nil, integer | nil
end