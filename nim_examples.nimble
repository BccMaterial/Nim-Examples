# Package

version       = "0.2.0"
author        = "thiagopls1"
description   = "Nim examples for paradigms classes"
license       = "MIT"
srcDir        = "src"
bin           = @[
                  "trabalho_1/simple_calculator",
                  "trabalho_1/hello_world",
                  "trabalho_1/types",
                  "trabalho_1/custom_types",

                  "trabalho_2/basic_func",
                  "trabalho_2/polimorfism",
                  "trabalho_2/high_order",
                  "trabalho_2/polimorfism_and_high_order",
                  "trabalho_2/currying"
                ]
binDir        = "build"


# Dependencies
requires "nim >= 2.0.8"
