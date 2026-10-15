(defpackage cl-identicon-generator
  (:use :cl
        :cl-svg)
  (:export :main))

(in-package #:cl-identicon-generator)

(defun main ()
  (with-svg-to-file
      (scene 'svg-1.1-toplevel :height 20 :width 20)
      (#p"identicon.svg" :if-exists :supersede)
    (draw scene (:circle :cx 10 :cy 10 :r 5) :fill "cyan")))
