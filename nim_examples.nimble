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
                  "trabalho_2/currying",

                  "trabalho_3/threads",
                  "trabalho_3/sync",
                  "trabalho_3/corroutine",
                  "trabalho_3/async"
                ]
binDir        = "build"

task corroutine, "Compila corrotina com flags":
    exec "nim c -d:nimCoroutines -o:build/corroutine src/trabalho_3/corroutine.nim"
    exec "build/corroutine"

# Dependencies
requires "nim >= 2.0.8"
