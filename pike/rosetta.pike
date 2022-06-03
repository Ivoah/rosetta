import Stdio;

int main() {
    write("Writing ../pike.ppm\n");

    File file = FILE("../pike.ppm", "cw");
    file.write("P3\n256 256\n255\n");
    for (int r = 0; r <= 255; r++) {
        for (int g = 0; g <= 255; g++) {
            file.printf("%d %d 0 ", r, g);
        }
        file.write("\n");
    }
    file.close();
}
