(ns rosetta.core)

(use 'clojure.java.io)

(defn -main []
  (println "Writing ../clojure.ppm")
  (with-open [writer (writer "../clojure.ppm")]
    (.write writer "P3\n256 256\n255\n")

    (doseq [r (range 256)]
      (doseq [g (range 256)]
        (.write writer (format "%d %d 0 " r g)))
      (.write writer "\n"))))
