function main()
    print("color version or full version")
    local input = io.read()

    if input == "color version" then
        os.execute("sh /build/colorv.sh")
    elseif input == "full version" then
        os.execute("sh /build/fullv.sh")
    else
        main()
    end
end

main()