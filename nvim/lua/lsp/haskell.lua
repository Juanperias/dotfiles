return {
    cmd = { "haskell-language-server", "--lsp" },
    filetypes = { "haskell", "lhaskell" },
    root_markers = { "stack.yaml", "hie-bios", "BUILD.bazel", "cabal.config", "package.yaml" },
}
