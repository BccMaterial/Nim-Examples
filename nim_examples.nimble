# Package

version       = "0.1.0"
author        = "thiagopls1"
description   = "Nim examples for paradigms classes"
license       = "MIT"
srcDir        = "src"
bin           = @[
                  "trabalho_1/simple_calculator", 
                  "trabalho_1/hello_world", 
                  "trabalho_1/types", 
                  "trabalho_1/custom_types",

                  "trabalho_2/functional",
                  "trabalho_2/function_as_argument"
                ]
binDir        = "build"  


# Dependencies

requires "nim >= 2.0.8"
