global record Vector
    x: number
    y: number
    z: number
    add: function(other: Vector): Vector
    sub: function(other: Vector): Vector
    mul: function(factor: number): Vector
    div: function(factor: number): Vector
    unm: function(): Vector
    dot: function(other: Vector): Vector
    cross: function(other: Vector): Vector
    length: function(): number
    normalize: function(): Vector
    round: function(tolerance?: number): Vector
    tostring: function(): string
    equals: function(other: Vector): boolean
end

global record vector
    new: function(x: number, y: number, z: number): Vector
end
