require("craftos.colors")
require("craftos.colours")
require("craftos.term")

local enum Instrument
    "harp"
    "basedrum"
    "snare"
    "hat"
    "bass"
    "flute"
    "bell"
    "guitar"
    "chime"
    "xylophone"
    "iron_xylophone"
    "cow_bell"
    "didgeridoo"
    "bit"
    "banjo"
    "pling"
end

local record Enchantment
    name: string
    displayName: string
    level: integer
end

local record Effect
    name: string
    displayName: string
    duration: number | nil
    potency: integer | nil
end

local record ItemGroup
    id: string
    displayName: string
end

global record ItemInfo
    name: string
    displayName: string
    count: integer
    maxCount: integer
    damage: integer | nil
    maxDamage: integer | nil
    durability: number | nil
    unbreakable: boolean | nil
    nbt: string | nil
    tags: {string: boolean} | nil
    lore: {string} | nil
    enchantments: {Enchantment} | nil
    potionEffects: {Effect} | nil
    itemGroups: {ItemGroup} | nil
    mapColor: integer | nil
    mapColour: integer | nil
end

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
    getTextScale: function(scale: number)
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

global record RedstonePeripheral is IPeripheral
    setOutput: function(side: string, on: boolean)
    getOutput: function(side: string): boolean
    getInput: function(side: string): boolean
    setAnalogOutput: function(side: string, value: integer)
    setAnalogueOutput: function(side: string, value: integer)
    getAnalogOutput: function(side: string): integer
    getAnalogueOutput: function(side: string): integer
    getAnalogInput: function(side: string): integer
    getAnalogueInput: function(side: string): integer
    setBundledOutput: function(side: string, output: integer)
    getBundledOutput: function(side: string): integer
    getBundledInput: function(side: string): integer
    testBundledInput: function(side: string, mask: integer): boolean
end

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
