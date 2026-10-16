(defpackage cl-identicon-generator
  (:use :cl
        :cl-svg)
  (:export :main))

(in-package #:cl-identicon-generator)

(defconstant svg-file #p"/home/xolcman/data/programming/lisp/cl-identicon-generator/identicon.svg")

(defun main ()
  (with-svg-to-file
      (scene 'svg-1.1-toplevel :height 700 :width 700)
      (svg-file :if-exists :supersede)
    (draw scene (:path :d (path
                            (move-to 0 0)
                            (line-to 0 100)
                            (line-to 50 50)))
          :fill "red" :stroke "none")
    (draw scene (:path :d (path
                            (move-to 100 0)
                            (line-to 50 50)
                            (line-to 100 100)))
          :fill "blue" :stroke "none")
    ))
