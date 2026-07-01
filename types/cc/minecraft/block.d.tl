require("cc.global.colors")

global record BlockInfo
    name: string
    state: {string: any}
    tags: {string: boolean}
    nbt: {string: any} | nil
    mapColor: Color | nil
    mapColour: Colour | nil
end
