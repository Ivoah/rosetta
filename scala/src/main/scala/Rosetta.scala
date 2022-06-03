import java.io._

object Rosetta extends App {
  println("Writing ../scala.ppm")
  
  val file = new FileWriter(new File("../scala.ppm"))
  file.write("P3\n256 256\n255\n")

  for (r <- 0 to 255) {
    for (g <- 0 to 255) {
      file.write(s"$r $g 0 ")
    }
    file.write("\n")
  }

  file.close()
}
