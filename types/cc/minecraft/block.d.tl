require("cc.global.colors")

global record BlockInfo
    name: string
    state: {string: any}
    tags: {string: boolean} | nil
    nbt: {string: any}
    mapColor: Color | nil
    mapColour: Colour | nil
end
