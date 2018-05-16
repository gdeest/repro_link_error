load(
    "@io_tweag_rules_haskell//haskell:haskell.bzl",
    "haskell_library",
    "haskell_toolchain",
    "haskell_cc_import",
)

haskell_toolchain(
    name = "ghc-nix-packages-toolchain",
    version = "8.2.2",
    tools = "@ghc-nix-packages-toolchain//:bin",
)

haskell_library(
    name = "lib",
    srcs = ["Lib.hs"],
    visibility = ["//visibility:public"],
    prebuilt_dependencies = ["base"],
    deps = ["@other_repo//:hslib"],
)
