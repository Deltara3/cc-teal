global interface IRedstone
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

global record redstone is IRedstone
    getSides: function(): {string}
end

global record rs is IRedstone
    getSides: function(): {string}
end