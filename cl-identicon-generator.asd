(defsystem "cl-identicon-generator"
  :version "0.0.1"
  :author "xolcman"
  :mailto "xolcman@gmail.com"
  :license "GNU3"
  :depends-on ("cl-svg")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "cl-identicon-generator/tests"))))

(defsystem "cl-identicon-generator/tests"
  :author "xolcman"
  :license "GNU3"
  :depends-on ("cl-identicon-generator"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-identicon-generator"
  :perform (test-op (op c) (symbol-call :rove :run c)))
