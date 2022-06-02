import java.io._

object Rosetta extends App {
  println("Writing ../scala.ppm")
  
  val writer = new FileWriter(new File("../scala.ppm"))
  writer.write("P3\n256 256\n255\n")

  for (r <- 0 to 255) {
    for (g <- 0 to 255) {
      writer.write(s"$r $g 0 ")
    }
    writer.write("\n")
  }

  writer.close()
}
