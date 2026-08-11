function main()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "color version" then
        os.execute("sh build/build-colorv.sh")
    elseif version == "modern version" then
        os.execute("sh build/build-modernv.sh")
    elseif version == "pixel art version" then
        os.execute("sh build/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        main()
    end
    print("building file in /build/out/ (could take 10 seconds)")
end

main()
