println("Writing ../julia.ppm")
file = open("../julia.ppm", "w")
write(file, "P3\n256 256\n255\n")

for r = 0:255
    for g = 0:255
        write(file, "$r $g 0 ")
    end
    write(file, "\n")
end

close(file)
