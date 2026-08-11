function main()
    print("color version or full version")
    local version = io.read()

    if version == "color version" then
        os.execute("sh /build/colorv.sh")
    elseif version == "full version" then
        os.execute("sh /build/fullv.sh")
    else
        print("write color version or full version")
        main()
    end

    print("CSS file generated in /build/")
    print("go to /build/ (y/n)")
    local gotobuild = io.read() -- dont rename to goto-build

    if gotobuild == "y" then
        os.execute("cd build && ls")
    elseif gotobuild == "n" then
        print("ok script done")
    else
        print("defaulted to no")
    end
end

main()