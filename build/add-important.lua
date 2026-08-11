for line in io.lines() do
    if line:match(":") and line:match(";") then
        if not line:find("!important", 1, true) then
            line = line:gsub(";%s*$", " !important;")
        end
    end

    print(line)
end