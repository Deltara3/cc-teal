require("cc.minecraft.block")
require("cc.minecraft.entity")

global record commands
    exec: function(command: string): boolean, {string}, number | nil
    execAsync: function(command: string): integer
    list: function(...: string): {string}
    getDimension: function(): string
    getBlockPosition: function(): number, number, number
    getBlockInfos: function(
        minX: number,
        minY: number,
        minZ: number,
        maxX: number,
        maxY: number,
        maxZ: number,
        dimension?: string
    ): {BlockInfo}
    getBlockInfo: function(
        x: number,
        y: number,
        z: number,
        dimension?: string
    ): BlockInfo
    getEntities: function(selector: string): {EntityInfo}
end
