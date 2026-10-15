(defpackage cl-identicon-generator/tests/main
  (:use :cl
        :cl-identicon-generator
        :rove))
(in-package :cl-identicon-generator/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-identicon-generator)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
