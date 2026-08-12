function main()
    print("color version, modern version or pixel art version")
    local version = io.read()

    if version == "color version" then
        os.execute("sh build/cfrappe/build-colorv.sh")
    elseif version == "modern version" then
        os.execute("sh build/cfrappe/build-modernv.sh")
    elseif version == "pixel art version" then
        os.execute("sh build/cfrappe/build-pixelv.sh")
    else
        print("write color version, modern version or pixel version")
        main()
    end
    print("building file in /build/dist/ (could take 10 seconds)")
end

main()
