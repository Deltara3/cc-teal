require("cc.global.colors")
require("cc.minecraft.enchantment")
require("cc.minecraft.effect")

global record ItemGroup
    id: string
    displayName: string
end

global record ItemInfo
    name: string
    displayName: string
    count: integer
    maxCount: integer | nil
    damage: integer | nil
    maxDamage: integer | nil
    durability: number | nil
    unbreakable: boolean | nil
    nbt: string | nil
    tags: {string: boolean} | nil
    lore: {string} | nil
    enchantments: {Enchantment} | nil
    potionEffects: {Effect} | nil
    itemGroups: {ItemGroup}
    mapColor: Color | nil
    mapColour: Colour | nil
end
