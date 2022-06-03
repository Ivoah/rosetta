import std/strformat

echo "Writing ../nim.ppm"

let f = open("../nim.ppm", fmWrite)
f.write("P3\n256 256\n255\n")

for r in 0..255:
    for g in 0..255:
        f.write(fmt"{r} {g} 0 ")
    f.write("\n")
f.close()
