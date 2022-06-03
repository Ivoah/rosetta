(ns rosetta.core)

(use 'clojure.java.io)

(defn -main []
  (println "Writing ../clojure.ppm")
  (with-open [file (writer "../clojure.ppm")]
    (.write file "P3\n256 256\n255\n")

    (doseq [r (range 256)]
      (doseq [g (range 256)]
        (.write file (format "%d %d 0 " r g)))
      (.write file "\n"))))
