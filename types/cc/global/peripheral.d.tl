require("cc.global.redstone")
require("cc.global.term")
require("cc.minecraft.instrument")
require("cc.minecraft.item")

global interface IPeripheral end

global record CommandPeripheral is IPeripheral
    getCommand: function(): string
    setCommand: function(command: string)
    runCommand: function(): boolean, string | nil
end

global record ComputerPeripheral is IPeripheral
    turnOn: function()
    shutdown: function()
    reboot: function()
    getID: function(): integer
    isOn: function(): boolean
    getLabel: function(): string | nil
end

global record DrivePeripheral is IPeripheral
    isDiskPresent: function(): boolean
    getDiskLabel: function(): string | nil
    setDiskLabel: function(label?: string)
    hasData: function(): boolean
    getMountPath: function(): string | nil
    hasAudio: function(): boolean
    getAudioTitle: function(): string | boolean | nil
    playAudio: function()
    stopAudio: function()
    ejectDisk: function()
    getDiskID: function(): integer | nil
end

global record ModemPeripheral is IPeripheral
    open: function(channel: integer)
    isOpen: function(channel: integer): boolean
    close: function(channel: integer)
    closeAll: function()
    transmit: function(channel: integer, replyChannel: integer, payload: any)
    isWireless: function(): boolean
end

global record WiredModemPeripheral is IPeripheral
    open: function(channel: integer)
    isOpen: function(channel: integer): boolean
    close: function(channel: integer)
    closeAll: function()
    transmit: function(channel: integer, replyChannel: integer, payload: any)
    isWireless: function(): boolean
    getNamesRemote: function(): {string}
    isPresentRemote: function(name: string): boolean
    getTypeRemote: function(name: string): string | nil
    hasTypeRemote: function(name: string, type: string): boolean | nil
    getMethodsRemote: function(name: string): {string} | nil
    callRemote: function(remoteName: string, method: string, ...: any): any...
    getNameLocal: function(): string | nil
end

global record MonitorPeripheral is IPeripheral, ITerminal
    setTextScale: function(scale: number)
    getTextScale: function(): number
end

global record PrinterPeripheral is IPeripheral
    write: function(text: string | number | integer)
    getCursorPos: function(): integer, integer
    setCursorPos: function(x: integer, y: integer)
    getPageSize: function(): integer, integer
    newPage: function(): boolean
    endPage: function(): boolean
    setPageTitle: function(title?: string)
    getInkLevel: function(): integer
    getPaperLevel: function(): integer
end

global record RedstonePeripheral is IPeripheral, IRedstone end

global record SpeakerPeripheral is IPeripheral
    playNote: function(
        instrument: Instrument,
        volume?: number,
        pitch?: number
    ): boolean
    playSound: function(
        name: string,
        volume?: number,
        pitch?: number
    ): boolean
    playAudio: function(audio: {number}, volume?: number): boolean
    stop: function()
end

global record EnergyPeripheral is IPeripheral
    getEnergy: function(): integer
    getEnergyCapacity: function(): integer
end

global record FluidPeripheral is IPeripheral
    tanks: function(): {integer: {string: any}}
    pushFluid: function(
        toName: string,
        limit?: integer,
        fluidName?: string
    ): integer
    pullFluid: function(
        fromName: string,
        limit?: integer,
        fluidName?: string
    ): integer
end

global record InventoryPeripheral is IPeripheral
    size: function(): integer
    list: function(): {integer: {string: any}}
    getItemDetail: function(slot: integer): ItemInfo | nil
    getItemLimit: function(slot: integer): integer
    pushItems: function(
        toName: string,
        fromSlot: integer,
        limit?: integer,
        toSlot?: integer
    ): integer
    pushItems: function(
        fromName: string,
        fromSlot: integer,
        limit?: integer,
        toSlot?: integer
    ): integer
end

global record peripheral
    getNames: function(): {string}
    isPresent: function(name: string): boolean
    getType: function(peripheral: IPeripheral): string... | nil
    hasType: function(
        peripheral: string | IPeripheral,
        type: string
    ): boolean | nil
    getMethods: function(name: string): {string} | nil
    getName: function(peripheral: IPeripheral): string
    call: function(name: string, method: string, ...: any): any...
    wrap: function(name: string): IPeripheral | nil
    find: function(
        type: string,
        filter?: (function(string, IPeripheral): boolean)
    ): {IPeripheral}
end