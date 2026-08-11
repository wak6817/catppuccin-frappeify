local css = io.read("*a")

-- Add !important to CSS declarations that don't already have it.
css = css:gsub("(%f[%w%-][%w%-]+%s*:%s*[^;{}]+)(;)", function(declaration, semicolon)
    if declaration:find("!important", 1, true) then
        return declaration .. semicolon
    end

    return declaration:gsub("%s+$", "") .. " !important" .. semicolon
end)

io.write(css)