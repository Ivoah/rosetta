module rosetta;

import std.stdio;
import std.file;
import std.format;

void main() {
	writeln("Writing ../dlang.ppm");

	File file = File("../dlang.ppm", "w");
	file.write("P3\n256 256\n255\n");
	foreach (r; 0..256) {
		foreach (g; 0..256) {
			file.write(format("%d %d 0 ", r, g));
		}
		file.write("\n");
	}
	file.close();
}
