;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname morse-in-progress) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (translator ch)
  (cond
    [(or (equal? ch #\a) (equal? ch #\A)) ".-"]
    [(or (equal? ch #\b) (equal? ch #\B)) "-..."]
    [(or (equal? ch #\c) (equal? ch #\C)) "-.-."]
    [(or (equal? ch #\d) (equal? ch #\D)) "-.."]
    [(or (equal? ch #\e) (equal? ch #\E)) "."]
    [(or (equal? ch #\f) (equal? ch #\F)) "..-."]
    [(or (equal? ch #\g) (equal? ch #\G)) "--."]
    [(or (equal? ch #\h) (equal? ch #\H)) "...."]
    [(or (equal? ch #\i) (equal? ch #\I)) ".."]
    [(or (equal? ch #\j) (equal? ch #\J)) ".---"]
    [(or (equal? ch #\k) (equal? ch #\K)) "-.-"]
    [(or (equal? ch #\l) (equal? ch #\L)) ".-.."]
    [(or (equal? ch #\m) (equal? ch #\M)) "--"]
    [(or (equal? ch #\n) (equal? ch #\N)) "-."]
    [(or (equal? ch #\o) (equal? ch #\O)) "---"]
    [(or (equal? ch #\p) (equal? ch #\P)) ".--."]
    [(or (equal? ch #\q) (equal? ch #\Q)) "--.-"]
    [(or (equal? ch #\r) (equal? ch #\R)) ".-."]
    [(or (equal? ch #\s) (equal? ch #\S)) "..."]
    [(or (equal? ch #\t) (equal? ch #\T)) "-"]
    [(or (equal? ch #\u) (equal? ch #\U)) "..-"]
    [(or (equal? ch #\v) (equal? ch #\V)) "...-"]
    [(or (equal? ch #\w) (equal? ch #\W)) ".--"]
    [(or (equal? ch #\x) (equal? ch #\Y)) "-.--"]
    [(or (equal? ch #\z) (equal? ch #\Z)) "--.."]
    [(equal? ch #\.) ".-.-.-"]
    [(equal? ch #\,) "--..--"]
    [(equal? ch #\space) "/"]
    [else ch]))


(define (morse-los los)
  (map (lambda (x) (translator x)) los))


(define (morse str)
  (foldr (lambda (x y) (string-append x " " y)) "" (morse-los (string->list str))))
                          
   
    