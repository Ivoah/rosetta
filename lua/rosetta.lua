print("Writing ../lua.ppm")

file = io.open("../lua.ppm", "w")
file:write("P3\n256 256\n255\n")

for r = 0, 255 do
    for g = 0, 255 do
        file:write(string.format("%d %d 0 ", r, g))
    end
end

file:close()
