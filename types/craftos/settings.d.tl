local record SettingOptions
    description: string | nil
    default: any | nil
    type: string | nil
end

local record SettingInfo
    description: string | nil
    default: any | nil
    type: string | nil
    value: any | nil
end

global record settings
    define: function(name: string, options?: SettingOptions)
    undefine: function(name: string)
    set: function(name: string, value: any)
    get: function(name: string, default?: any): any
    getDetails: function(name: string): SettingInfo
    unset: function(name: string)
    clear: function()
    getNames: function(): {string}
    load: function(path?: string): boolean
    save: function(path?: string): boolean
end
