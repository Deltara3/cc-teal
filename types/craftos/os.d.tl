local record Date
    year: integer
    month: integer
    day: integer
    hours: integer
    min: integer
    sec: integer
    wday: integer
    yday: integer
    isdst: boolean
end

global record os
    loadAPI: function(path: string): boolean
    unloadAPI: function(path: string)
    pullEvent: function(filter?: string): string, any...
    pullEventRaw: function(filter?: string): string, any...
    sleep: function(time: number)
    version: function(): string
    run: function(env: {any: any}, path: string, ...: any): boolean
    queueEvent: function(name: string, ...: any)
    startTimer: function(time: number): integer
    cancelTimer: function(token: integer)
    setAlarm: function(time: number): integer
    cancelAlarm: function(token: integer)
    shutdown: function()
    reboot: function()
    getComputerID: function(): integer
    computerID: function(): integer
    getComputerLabel: function(): string | nil
    computerLabel: function(): string | nil
    setComputerLabel: function(label?: string)
    clock: function(): integer
    time: function(locale?: string | table): integer
    day: function(locale?: string): integer
    epoch: function(locale?: string): integer
    date: function(format?: string, time?: integer): string | Date
end
