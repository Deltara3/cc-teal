global record BlockInfo
    name: string
    state: {string: any}
    tags: {string: boolean} | nil
    nbt: {string: any}
    mapColor: integer | nil
    mapColour: integer | nil
end

global record EntityInfo
    name: string
    displayName: string | nil
    health: number | nil
    maxHealth: number | nil
    tags: {string: boolean} | nil
end

global record commands
    exec: function(command: string): boolean, {string}, integer | nil
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
