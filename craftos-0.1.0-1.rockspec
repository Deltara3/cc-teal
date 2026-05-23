package = "craftos"
version = "0.1.0-1"

source = {
    url = "git+https://github.com/Deltara3/craftos.tl.git"
}

dependencies = {
    "lua >= 5.1",
    "tl"
}

build = {
    type = "builtin",
    modules = {},
    install = {
        lua = {
            ["craftos"] = "types/craftos.d.tl",
            ["craftos.core"] = "types/craftos/core.d.tl",
            ["craftos.colors"] = "types/craftos/colors.d.tl",
            ["craftos.colours"] = "types/craftos/colours.d.tl",
            ["craftos.commands"] = "types/craftos/commands.d.tl",
            ["craftos.disk"] = "types/craftos/disk.d.tl",
            ["craftos.fs"] = "types/craftos/fs.d.tl",
            ["craftos.gps"] = "types/craftos/gps.d.tl",
            ["craftos.help"] = "types/craftos/help.d.tl",
            ["craftos.http"] = "types/craftos/http.d.tl"
        }
    }
}