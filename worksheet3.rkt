;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname worksheet3) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define str "helloworld")
(define i 5)
(string-append (substring str 0 i) "_" (substring str i 10))




(circle 100 "solid" "red")
(place-image (circle 60 "solid" "red") 10 40 (rectangle 200 300 "solid" "green"))
(empty-scene 200 200)
(place-image (circle 100 "solid" "red") 10 40 (empty-scene 200 200))




(above (triangle 110 "solid" " brown")
(place-image
 (square 20 "solid" "black")
  25 45
 (place-image
  (square 20 "solid" "black")
  75 45
  (place-image
   (rectangle 15 30 "solid" "brown")
   50 90
   (square 100 "solid" "yellow")))))





(overlay (beside (above (circle 23 "solid" "red")
                (circle 23 "solid" "red"))
                (above (circle 23 "solid" "red")
                       (circle 23 "solid" "red")))
                       (circle 120 "solid" "green"))                       
