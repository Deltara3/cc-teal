global record Vector
    add: function(o: Vector): Vector
    sub: function(o: Vector): Vector
    mul: function(factor: number): Vector
    div: function(factor: number): Vector
    unm: function(): Vector
    dot: function(o: Vector): number
    cross: function(o: Vector): Vector
    length: function(): number
    normalize: function(): Vector
    round: function(tolerance?: number): Vector
    tostring: function(): string
    equals: function(other: Vector): boolean
end

global record vector
    new: function(x: number, y: number, x: number)
end