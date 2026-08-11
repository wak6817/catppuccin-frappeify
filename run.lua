function main()
    print("color version or full version")
    local version = io.read()

    if version == "color version" then
        os.execute("sh build/build-colorv.sh")
    elseif version == "full version" then
        os.execute("sh build/build-fullv.sh")
    else
        print("write color version or full version")
        main()
    end
    print("building file in /build/ (could take 10 seconds)")
end

main()