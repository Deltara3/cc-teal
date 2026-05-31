global record gps
    CHANNEL_GPS: integer
    locate: function(
        timeout?: number,
        debug?: boolean
    ): number | nil, number | nil, number | nil
end
