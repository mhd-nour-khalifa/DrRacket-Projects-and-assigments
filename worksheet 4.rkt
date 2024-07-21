;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |worksheet 4|) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;purpose: to convert Celsius degree to Fahrenheit degree
;data definition: number
;contract:number (Celsius degree) ---> number (Fahrenheit degree)
;example:
(check-expect ( fromCeltoFahr -10) 14)
(check-expect ( fromCeltoFahr -5) 23)
;function header
;define (fromCeltoFahr x) number) 
;template:
;(define (fromCeltoFahr  x)(...x..))
;function 
(define (fromCeltoFahr x)
  (+ (* x (/ 9 5)) 32))
  ;testing:
  (fromCeltoFahr -50 )
  (fromCeltoFahr -70 ) 


;purpose: to calculate the area of a rectangle
;data definition:number
;contract: number(width) number(height) --> number (area of rectangle)
;example:
(check-expect (areaOfRect 2 3 ) 6)
(check-expect (areaOfRect 3 8 ) 24)
(check-expect (areaOfRect 4 10 ) 40)
;function header
;define (areaOfRect x y) number)
;template:
;(define (areaOfRect x y)(...x...y..))
;function
(define (areaOfRect x y)
                   (* x y))
;testing:
(areaOfRect 6 12)
(areaOfRect 12 20)




;purpose:to draw a rectangle with given width and height
;data definition: number 
;Contract: number(width) number(height) --> image (rectangle)
;example:
(check-expect (drawRect 5 2)(rectangle 5 2 "solid" "red"))
(check-expect (drawRect 18 20)(rectangle 18 20 "solid" "red"))
;function header
;define (drawRect x y)image)
;template:
;define (drawRect x y)(...x...y..)
;function:
(define (drawRect x y)
  (rectangle x y "solid" "red"))
;testing:
(drawRect 200 150)
(drawRect 250 100)



;purpose: to calculate the body mass index (BMI)
;data definition: number
;Contract: number(weight) number (height) --> number (BMI)
;example:
(check-expect (calculateBMI 70 1.9)( / 7000 361))
(check-expect (calculateBMI 80 1.72)(/ 50000 1849))
;function header:
;define(calculateBMI x y )number)
;template:
;define (calculateBMI x y)(...x...y..)
;function:
(define (calculateBMI x y)
  (/ x (sqr y)))
  ;testing:
(calculateBMI 63 1.73)
(calculateBMI 70 1.9)






;purpose: to animate STAR diagonaly
;constants:
;image:
(define STAR (star 70 "solid" "yellow"))
;width of scene
(define W 600)
;height of scene
(define H 600)
;empty scene
(define SCN ( empty-scene W H))
;data definition: number
;contract: flySTAR:number(y)-->image
;example:
(check-expect (flySTAR 10) (place-image STAR 50 50 SCN))
(check-expect (flySTAR 9) (place-image STAR 45 45 SCN))
;function header:
;(define flySTAR y)image)
;template:
;(define flySTAR y)(...y..))
;function:
(define (flySTAR y)
  (place-image STAR (* 5 y) (* 5 y) SCN))
;testing:

  (flySTAR 100)

  (animate flySTAR)