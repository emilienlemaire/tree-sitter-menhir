# tree-sitter-menhir

[Menhir](http://gallium.inria.fr/~fpottier/menhir/) grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter)

# Add to neovim

Install with your favorite plugin manager and copy this code in your `tree-sitter` config file:
```lua
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.menhir = {
  install_info = {
    url = "https://github.com/emilienlemaire/tree-sitter-menhir",
    files = { "src/parser.c", "src/scanner.cc" },
  },
  filetype = "menhir",
}
```

Then run `:TSInstall menhir`.

## References

- [Menhir manual](http://gallium.inria.fr/~fpottier/menhir/manual.html)
- [Menhir parser and lexer](https://gitlab.inria.fr/fpottier/menhir)
