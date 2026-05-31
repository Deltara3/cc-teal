require("cc.global.peripheral")
require("cc.minecraft.block")

global record turtle
    craft: function(limit?: integer): boolean, string | nil
    forward: function(): boolean, string | nil
    back: function(): boolean, string | nil
    up: function(): boolean, string | nil
    down: function(): boolean, string | nil
    turnLeft: function(): boolean, string | nil
    turnRight: function(): boolean, string | nil
    dig: function(side?: string): boolean, string | nil
    digUp: function(side?: string): boolean, string | nil
    digDown: function(side?: string): boolean, string | nil
    place: function(text?: string): boolean, string | nil
    placeUp: function(text?: string): boolean, string | nil
    placeDown: function(text?: string): boolean, string | nil
    drop: function(count?: integer): boolean, string | nil
    dropUp: function(count?: integer): boolean, string | nil
    dropDown: function(count?: integer): boolean, string | nil
    select: function(slot: integer): boolean
    getItemCount: function(slot?: integer): integer
    getItemSpace: function(slot?: integer): integer
    detect: function(): boolean
    detectUp: function(): boolean
    detectDown: function(): boolean
    compare: function(): boolean
    compareUp: function(): boolean
    compareDown: function(): boolean
    attack: function(side?: string): boolean, string | nil
    attackUp: function(side?: string): boolean, string | nil
    attackDown: function(side?: string): boolean, string | nil
    suck: function(count?: integer): boolean, string | nil
    suckUp: function(count?: integer): boolean, string | nil
    suckDown: function(count?: integer): boolean, string | nil
    getFuelLevel: function(): integer | string
    refuel: function(count?: integer): boolean, string | nil
    compareTo: function(slot: integer): boolean
    transferTo: function(slot: integer, count?: integer): boolean
    getSelectedSlot: function(): integer
    getFuelLimit: function(): integer | string
    equipLeft: function(): boolean, string | nil
    equipRight: function(): boolean, string | nil
    getEquippedLeft: function(): ItemInfo | nil
    getEquippedRight: function(): ItemInfo | nil
    inspect: function(): boolean, BlockInfo | string
    inspectUp: function(): boolean, BlockInfo | string
    inspectDown: function(): boolean, BlockInfo | string
    getItemDetail: function(slot?: integer, detailed?: boolean): ItemInfo | nil
end